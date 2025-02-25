file = 'fechas.txt'

fil = open(file, 'w')

num = 1

def genfech(i0=0, ini=0, fin=0, mes=''):
  global num

  dias = ['lunes', 'martes', 'miercoles', 'jueves', 'viernes', 'sabado', 'domingo']

  for ii in range(ini, fin+1):
#    print([i0, ii])
    dd = dias[i0]
    if dd in ['martes', 'jueves']:
      ss = str(num)+ '-' + mes+str(ii)+dd
      print(ss)
      num = num+1
    i0 = i0+1
    i0 = i0%7

genfech(0, 27, 31, 'ene')
genfech(5, 1, 28, 'feb')
genfech(5, 1, 31, 'mar')
genfech(1, 1, 30, 'abr')
genfech(3, 1, 23, 'may')
