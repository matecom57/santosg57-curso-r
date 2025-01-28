Lenguajes de Programación
=========================

Fotran
------

**f1.f90**

.. code:: Bash

   program hello
      print *, 'Hello, World!'
   end program hello
 

gfortran f1.f90 -o f1

(base) vagrant@vagrant:~$ cat f1.f90 
program hello
  ! This is a comment line; it is ignored by the compiler
  print *, 'Hello, World!'
end program hello



C
---

(base) iMac-de-Fernando:source santosg$ cc c1.c 

(base) iMac-de-Fernando:source santosg$ cat c1.c 
#include <stdio.h>

int main() {
  printf("Hello World!\n");
  return 0;
}

C++
---


(base) iMac-de-Fernando:source santosg$ c++ cmas.cpp 

(base) iMac-de-Fernando:source santosg$ cat cmas.cpp 
#include <iostream>

using namespace std;

int main() {
  cout << "Hello World-2!\n";
  return 0;
}





Java
----

(base) iMac-de-Fernando:source santosg$ cat GFG.java 
// A Java program to print "Hello World" 
public class GFG { 
    public static void main(String args[]) 
    { 
        System.out.println("Hello World"); 
    } 
}


(base) iMac-de-Fernando:source santosg$ javac GFG.java 
(base) iMac-de-Fernando:source santosg$ java GFG
Hello World

-------------------------------------------------------------------

R
______

(base) iMac-de-Fernando:source santosg$ cat r1.R 
print("Hola Mundo!")

(base) iMac-de-Fernando:source santosg$ cat compilaR.sh 
#!/bin/bash

Rscript $1".R"

------------------------------------------------------------------

Python
------

(base) iMac-de-Fernando:source santosg$ python p1.py 
Hola Munod!

(base) iMac-de-Fernando:source santosg$ cat p1.py 
print("Hola Munod!\n")




