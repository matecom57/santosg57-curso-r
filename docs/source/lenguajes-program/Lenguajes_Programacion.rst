Lenguajes de Programación
=========================

Fotran
------

**Programa fuente: f1.f90**

.. code:: Bash

   program hello
      print *, 'Hello, World!'
   end program hello
 
**Compilando el programa fuente y dejarlo ejecutable**

.. code:: Bash
  
   gfortran f1.f90 -o f1

**Ejecutando el programa**

.. code:: Bash
   
   vagrant@vagrant:~$ ./f1 
 
   Hello, World!


C
---

**Programa fuente: p1.c**

.. code:: Bash

   #include <stdio.h>

   int main() {
      printf("Hello World!n\n\n"); 
      return 0;
   }


**Compilando el programa fuente y dejarlo ejecutable**

  
.. code:: Bash

   cc p1.c

**Ejecutando el programa**

.. code:: Bash

   (base) vagrant@vagrant:~$ ./a.out 
   
   Hello World!n


C++
---

**Programa fuente: cmas.cpp **  

.. code:: Bash

   #include <iostream>

   using namespace std;

   int main() {
      cout << "Hello World-2!n"; 
      return 0;
   }

**Compilando el programa fuente y dejarlo ejecutable**
      

.. code:: Bash

   c++ cmas.cpp 

**Ejecutando el programa**

.. code:: Bash

   (base) vagrant@vagrant:~$ ./a.out 

   Hello World-2!n(base) vagrant@vagrant:~$ 



Java
----

**Programa fuente: GFG.java**

.. code:: Bash


   // A Java program to print “Hello World” 

   public class GFG {
      public static void main(String args[]) {
         System.out.println(“Hello World”);
      }
   }


**Compilando el programa fuente y dejarlo ejecutable**

.. code:: Bash

   javac GFG.java 

**Ejecutando el programa**

.. code:: Bash

   (base) vagrant@vagrant:~$ java GFG
   
   Hello World


-------------------------------------------------------------------


R
______


**Programa fuente: r1.R**

.. code:: Bash

   print("Hola Mundo!")

**Ejecutando el Script**

.. code:: Bash

   Rscript r1.R

   [1] "Hola Mundo!"



------------------------------------------------------------------

Python
------

**Programa fuente: p1.py**
    
.. code:: Bash

   print("Hola Munod!\n")

**Ejecutando el Script**

.. code:: Bash 

   (base) iMac-de-Fernando:source santosg$ python p1.py 

   Hola Munod!





