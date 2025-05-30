+++
title = 'Practica2'
date = 2025-05-29
draft = true
+++

## **Introducción**

Los lenguajes de programación son herramientas fundamentales para crear software y aplicaciones que utilizamos a diario. Estos lenguajes permiten a los programadores escribir instrucciones que una computadora puede entender y ejecutar. Los elementos básicos de los lenguajes de programación son componentes esenciales que permiten estructurar y organizar el código de manera coherente y eficiente.

Durante esta práctica analizaremos un código basado en una biblioteca, el cual contará con 2 librerías propias. El objetivo principal de esto es reconocer cada uno de los elementos básicos que contiene el programa.

## **Desarrollo**

**biblioteca_web.py**

* **app = Flask(__name__), library.load_library_from_file y library.load_members_from_file:** En este segmento se crea una aplicación Flask y una librería para administrar los datos, además de cargar los datos iniciales de la biblioteca desde archivos .json.
* **def index():** En este segmento se muestra la interfaz de la aplicación en un código html.
* **def get_books():** Aquí se obtienen todos los libros que existen en la biblioteca y se almacenan en una lista.
* **def add_books():** Esta es una función en la cual se añade un nuevo libro a la biblioteca, además de guardar los datos en la memoria después de ser agregados.
* **def get_members():** Se obtienen todos los miembros de la biblioteca y se almacenan en una lista.
* **def add_members():** Se agrega un nuevo miembro a la biblioteca, además de guardar los datos en la memoria después de ser agregados.
* **def issue_book():** Aquí se presta un libro a un miembro de la biblioteca, además guardar los datos del préstamo en los archivos .json.
* **def return_book():** Se devuelve un libro por parte de un miembro a la biblioteca, se actualizan los archivos .json.
* **def save():** Se guardan manualmente los datos de la biblioteca en archivos .json.
* **def get_genres():** Se obtienen todos los géneros de libros disponibles en la biblioteca en forma de lista.

**biblioteca.py**

* **class genre:** En esta clase se definen todos los géneros posibles para los libros.
* **class book:** En esta clase se define un libro, en donde __init__ es el constructor y __del__ el destructor, to_dict es un método el cual convierte los datos del libro en un diccionario y from_dict es un método para crear un objeto a partir de un diccionario.
* **class DigitalBook(Book):** Esta clase hereda sus atributos de la clase libro, cuenta con los métodos de esta misma clase pero en formato digital.
* **class Member_:** Representa a un miembro de la biblioteca, __init__ es el constructor y __del__ el destructor, to_dict() convierte los datos de los miembros en un diccionario y from_dict() crea un objeto miembro a partir de un diccionario.
* **class Library:** La clase librería genera utiliza funciones como add_book() y load_members_from_file().
* **def main():** Es la función principal del código, en donde se cargan los archivos .json y la librería, además de mostrar el ciclo while del menú para utilizar el programa.

**memory_management.py**

**class MemoryManagement:** La clase MemoryManagement define 3 métodos:
* increment_heap_allocations incrementa el contador en el valor especificado de heap_allocations.
* increment_heap_deallocations incrementa el contador en el valor especificado de heap_deallocations.
* display_memory_usage imprime los valores actuales de heap_allocations y heap_deallocations.
