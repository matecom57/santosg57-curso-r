np = 1000

xi = 2
xf = 4
del = (xf - xi)/np

x1 = xi
y1 = x1^2

suma = 0

while (x1 < xf-del){
	x2 = x1+del
	area = (x2-x1)*y1
	suma = suma+area
	x1 = x1+del
	y1 = x1^2  
}

print(suma)

print(64/3 - 8/3)

