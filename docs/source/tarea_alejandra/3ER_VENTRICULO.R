library(RNifti)

# Visualizacion 3D
usa_3d <- requireNamespace("misc3d", quietly = TRUE) &&
  requireNamespace("rgl", quietly = TRUE)

file <- "/Users/santosg/Desktop/Datos_Nifti/sub-01_T1w.nii.gz"
nii <- readNifti(file)
img <- as.array(nii)

cat("Dimensiones:", dim(img), "\n")

# Semilla aproximada dentro del tercer ventriculo.
seed <- c(125, 110, 178)
names(seed) <- c("k", "i", "j")

# Tamano de la ventana pequena para estimar intensidad del LCR.
delta_muestra <- 3

# Tamano de la ventana grande donde buscamos voxeles parecidos.
delta_busqueda <- c(25, 80, 80)

# Tolerancia en desviaciones estandar.
nsd <- 1.2

stopifnot(length(dim(img)) == 3)

esta_dentro <- function(idx, d) {
  idx[1] >= 1 && idx[1] <= d[1] &&
    idx[2] >= 1 && idx[2] <= d[2] &&
    idx[3] >= 1 && idx[3] <= d[3]
}

vecinos6 <- function(idx) {
  rbind(
    idx + c(-1, 0, 0),
    idx + c(1, 0, 0),
    idx + c(0, -1, 0),
    idx + c(0, 1, 0),
    idx + c(0, 0, -1),
    idx + c(0, 0, 1)
  )
}

flood_fill_3d <- function(candidata, seed_idx) {
  d <- dim(candidata)
  mascara <- array(FALSE, dim = d)
  
  if (!candidata[seed_idx[1], seed_idx[2], seed_idx[3]]) {
    stop("La semilla no cae dentro de la region candidata. Ajusta seed o nsd.")
  }
  
  max_n <- prod(d)
  cola <- matrix(0L, nrow = max_n, ncol = 3)
  inicio <- 1L
  fin <- 1L
  cola[fin, ] <- as.integer(seed_idx)
  mascara[seed_idx[1], seed_idx[2], seed_idx[3]] <- TRUE
  
  while (inicio <= fin) {
    actual <- cola[inicio, ]
    inicio <- inicio + 1L
    
    for (n in seq_len(6)) {
      v <- vecinos6(actual)[n, ]
      if (!esta_dentro(v, d)) {
        next
      }
      if (mascara[v[1], v[2], v[3]]) {
        next
      }
      if (!candidata[v[1], v[2], v[3]]) {
        next
      }
      
      fin <- fin + 1L
      cola[fin, ] <- v
      mascara[v[1], v[2], v[3]] <- TRUE
    }
  }
  
  mascara
}

extrae_muestra <- function(img, seed, delta) {
  d <- dim(img)
  r1 <- max(1, seed[1] - delta):min(d[1], seed[1] + delta)
  r2 <- max(1, seed[2] - delta):min(d[2], seed[2] + delta)
  r3 <- max(1, seed[3] - delta):min(d[3], seed[3] + delta)
  as.vector(img[r1, r2, r3])
}

hacer_candidata <- function(img, seed, delta_busqueda, media_ref, sd_ref, nsd = 2) {
  d <- dim(img)
  candidata <- array(FALSE, dim = d)
  
  r1 <- max(1, seed[1] - delta_busqueda[1]):min(d[1], seed[1] + delta_busqueda[1])
  r2 <- max(1, seed[2] - delta_busqueda[2]):min(d[2], seed[2] + delta_busqueda[2])
  r3 <- max(1, seed[3] - delta_busqueda[3]):min(d[3], seed[3] + delta_busqueda[3])
  
  bloque <- img[r1, r2, r3]
  candidata[r1, r2, r3] <- abs(bloque - media_ref) < nsd * sd_ref
  candidata
}

overlay_mask <- function(slice_img, slice_mask, main = "") {
  nr <- nrow(slice_img)
  nc <- ncol(slice_img)
  rgb_img <- array(0, dim = c(nr, nc, 3))
  
  escala <- (slice_img - min(slice_img)) / (max(slice_img) - min(slice_img) + 1e-8)
  rgb_img[, , 1] <- escala
  rgb_img[, , 2] <- escala
  rgb_img[, , 3] <- escala
  
  rgb_img[, , 1][slice_mask] <- 1
  rgb_img[, , 2][slice_mask] <- 0
  rgb_img[, , 3][slice_mask] <- 0
  
  op <- par(mar = c(2, 2, 2, 2))
  on.exit(par(op))
  plot(NA, xlim = c(1, nr), ylim = c(1, nc), xlab = "", ylab = "", asp = 1, main = main, axes = FALSE)
  rasterImage(as.raster(rgb_img), 1, 1, nr, nc)
}

muestra <- extrae_muestra(img, seed, delta_muestra)
media_ref <- mean(muestra)
sd_ref <- sd(muestra)

cat("Media muestra:", media_ref, "\n")
cat("SD muestra:", sd_ref, "\n")

candidata <- hacer_candidata(img, seed, delta_busqueda, media_ref, sd_ref, nsd = nsd)
mascara <- flood_fill_3d(candidata, seed)

n_vox <- sum(mascara)
cat("Voxeles segmentados:", n_vox, "\n")

# pixdim suele devolver c(dx, dy, dz). Si no esta disponible, usa 1 mm isotropico.
voxsize <- tryCatch({
  as.numeric(pixdim(nii))[1:3]
}, error = function(e) {
  c(1, 1, 1)
})

volumen_mm3 <- n_vox * prod(voxsize)
volumen_ml <- volumen_mm3 / 1000

cat("Voxel size (mm):", voxsize, "\n")
cat("Volumen (mm^3):", volumen_mm3, "\n")
cat("Volumen (mL):", volumen_ml, "\n")

# Vistas ortogonales pasando por la semilla
par(mfrow = c(1, 3))
overlay_mask(
  img[seed[1], , ],
  mascara[seed[1], , ],
  main = paste("Sagital")
)
overlay_mask(
  t(img[, seed[2], ]),
  t(mascara[, seed[2], ]),
  main = paste("Coronal")
)
overlay_mask(
  t(img[, , seed[3]]),
  t(mascara[, , seed[3]]),
  main = paste("Axial")
)

if (usa_3d) {
  rgl::open3d()
  misc3d::contour3d(
    mascara,
    level = 0.5,
    color = "red",
    alpha = 0.6,
    draw = TRUE
  )
  rgl::axes3d()
  rgl::title3d(
    xlab = "X",
    ylab = "Y",
    zlab = "Z",
    main = "Tercer ventriculo"
  )
} else {
  cat(
    "\nPara ver la reconstruccion 3D instala los paquetes 'misc3d' y 'rgl'.\n",
    sep = ""
  )
}
