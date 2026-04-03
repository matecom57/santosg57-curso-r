args <- commandArgs(trailingOnly = TRUE)

# Comprobar si se pasaron parámetros
if (length(args) == 0) {
  stop("Se requiere al menos un parámetro", call. = FALSE)
}

# Asignar y convertir parámetros
par <- args[1]

help(package = eval(par))
