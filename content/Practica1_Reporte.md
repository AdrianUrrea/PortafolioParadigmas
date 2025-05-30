+++
title = 'Practica1'
date = 2025-05-29
draft = false
summary = "Practica 1"
+++

## **Introducción**

Los lenguajes de programación son herramientas fundamentales para crear software y aplicaciones que utilizamos a diario. Estos lenguajes permiten a los programadores escribir instrucciones que una computadora puede entender y ejecutar. Los elementos básicos de los lenguajes de programación son componentes esenciales que permiten estructurar y organizar el código de manera coherente y eficiente.

Durante esta práctica analizaremos un código basado en una biblioteca, el cual contará con 2 librerías propias. El objetivo principal de esto es reconocer cada uno de los elementos básicos que contiene el programa.

## **Desarrollo**

**Memory_management.h**

* **Nombres:** Esta librería cuenta con varias funciones, las cuales son displayMemoryUsage, incrementHeapAllocations, incrementHeapDeallocations, incrementStackAllocations, incrementStackDeallocations, los cuales también son variables externas int (heap_allocations, heap_allocations…). Además, se cuenta con MEMORY_MANAGEMENT_H, la cual es un nombre de macro usada para no incluir el mismo archivo de cabecera.

* **Marco de activación:** Esta librería no cuenta con marcos de activación pues en ella solamente se declaran las funciones, más no se utilizan.

* **Bloques de alcance:** El alcance de la librería es de tipo cabecera (.h), mientras que sus variables son globales.

* **Administración de memoria:** Esta librería es la encargada de la administración de la memoria del programa, específicamente de la memoria dinámica (funciones heap) y la memoria automática (funciones stack).

* **Expresiones:** Esta librería cuenta con expresiones en el uso de macros, como lo es #define displayMemoryUsage() ((void)0) o MEMORY_MANAGEMENT_DISPLAY.

* **Comandos:** Esta librería no cuenta con comandos.

* **Control de secuencia:** En esta librería se utiliza la secuencia de selección o condicional, exactamente en #if MEMORY_MANAGEMENT_DISPLAY.

* **Subprogramas:** Funciones como displayMemoryUsage, incrementHeapAllocations, incrementHeapDeallotacions son ejemplos de subprogramas usados en la librería.
Tipos de datos: Entre los tipos de datos utilizados se pueden encontrar size_t y void*.


**Memory_management.c**

* **Nombres:** En este código podemos encontrar variables globales como lo pueden ser heap_allocations, stack_allocations o stack_deallocations, al igual que estructuras como MemoryRecord, y funciones cmo addMemoryRecord.

* **Marco de activación:** Los marcos de activación se encuentran cuando las funciones son llamadas (displayMemoryUsage, incrementStackAllocations…).

* **Bloques de alcance:** El código cuenta con un alcance global ya que las variables y funciones son de libre acceso por todo el código, al igual que las variables como heap_allocations o la lista enlazada heap_memory_records.

* **Administración de memoria:** Al igual que en la librería, solo se utiliza memoria dinámica y memoria automática, pues la dinámica se usa en las funciones que gestionan el seguimiento de la asignación o liberación de memoria, y la automática en las variables locales y los marcos de activación de las funciones que se gestionan de forma automática a medida que se invocan, 

* **Expresiones:** Algunas de las expresiones del código son heap_allocations o heap_deallocations, las cuales son funciones que incrementan los contadores, o funciones como addMemoryRecord que maneja la lógica de insertar registros en la lista enlazada.

* **Comandos:** Las funciones son los comandos que contiene este código, pues funciones como incrementHeapAllocations o incrementStackAllocations son comandos que manejan las asignaciones y liberaciones de memoria, mientras que removeMemoryRecord se encarga de liberar la memoria previamente asignada.

* **Control de secuencia:** En este código se utiliza el mismo #if MEMORY_MANAGEMENT_DISPLAY, el cual se usa para habilitar la visualización del uso de la memoria.

* **Subprogramas:** Algunos de los subprogramas son addMemoryRecord, removeMemoryRecord, incrementHeapAllocations, incrementHeapDeallocations, incrementStackAllocations, incrementStackDeallocations y displayMemoryUsage.

* **Tipos de datos:** En este código se utilizan varios tipos de datos, entre los cuales podemos encontrar MemoryRecord, size_t y void*.

Básicamente este código contiene todo la estructura de las funciones definidas en la librería.


**biblioteca.c**

* **Nombres:** Al ser un código de más de 400 líneas existen varios nombres de variables, funciones y estructuras, como lo pueden ser static_var, bss_var, count, choice, book_t, member_t, addBook, findBookById, issueBook, entre otros.

* **Marco de activación:** Existen varios marcos de activación en el código, pues al ser un menú cada caso es un marco de activación para alguna función, algunas almacenan variables locales como addBook, mientras que otras crean sus propios marcos de activación como issueBook o returnBook.

* **Bloques de Alcance:** En este código existen dos tipos de alcances, el global, en el caso de variables como static_var o bss_var, y el alcance local, en funciones como addBook, new_book, genre, entre otros.

* **Administración de memoria:** En este código se utilizan 3 tipos distintos de memoria, dinámica, estática y automática.  La memoria estática es usada en las variables, como es el caso de static_var. La memoria automática se asigna a las variables locales y no usan la palabra clave static, como lo pueden ser new_book o genre. La memoria dinámica se usa mediante funciones como malloc(), calloc() o realloc(), además de free(), también en las variables que cuentan con puntero (*).

* **Expresiones:** Se cuentan con varias expresiones en el código, algunas de ellas son las aritméticas, en el caso de new_book->quantity--, los lógicos, como los if, además de condicionales y relacionales.

* **Comandos:** Existen varios comandos utilizados en el código, como lo son los de declaración y de asignación, los condicionales, los de iteración o los de recursión.

* **Control de secuencias:** En este código se cuentan con distintos controles de secuencias, como lo es la secuencia de selección con los switch, las de iteración con los for o las de recursión para recorrer las listas.

* **Subprogramas:** En el código se pueden encontrar subprogramas como addBook, displayBooks, addMember, issueBook, returnBook, entre otros.

* **Tipos de datos:** En este código contamos con datos de tipo int, char, void, estructuras como book_t, genrer_t y member_t.

## **Conclusión**

Estos 3 códigos muestran un claro uso de la gestión de memoria con los distintos tipos que existen, además de mostrar con claridad cada uno de los elementos con los que debe contar cada lenguaje de programación. 

Esta práctica es una gran ayuda para comprender los principios fundamentales de la programación en C, sobre todo con la gestión de memoria, el control de flujo y funciones.
