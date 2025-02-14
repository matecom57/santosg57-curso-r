
np = 1000

del = (2*pi - 0)/np

te1 = 0
x1 = 2*cos(te1)
y1 = 2*sin(te1)

te2 = te1 + del

perimetro = 0
while (te2 <= 2*pi){
  x2 = 2*cos(te2)
  y2 = 2*sin(te2)
  d = sqrt((x2-x1)^2 + (y2-y1)^2)
  perimetro = perimetro + d
  x1 = x2
  y1 = y2
  te2 = te2 + del
}

print(perimetro)

