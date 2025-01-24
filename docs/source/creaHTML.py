nombre = 'www'

filin = open(nombre+'.txt', 'r')
filon = open(nombre+'.html', 'w')

c1 = '''
 <!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
</head>
<body>
'''

c2= '''
</body>
</html> 
'''

datos = filin.readlines()

filon.write(c1)
k = 1
for dd in datos:
  dd = dd.replace('\n','')
  if len(dd) > 0:
    ss = '<a href="' + dd + '"> www' + str(k) + '</a>'
    ss = '<p>' + ss + '</p>'
    filon.write(ss)
    k = k+1

filon.write(c2)
filon.close()



