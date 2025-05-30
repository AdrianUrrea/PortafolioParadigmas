+++
title = 'Practica4'
date = 2025-05-29
draft = false
summary = "Practica 4"
+++

# **Implementación del Paradigma Lógico**

**Primera sesión**

Durante la primera sesión de este Paradigma iniciamos instalando Prolog en nuestras computadoras, en donde configuramos el programa para que fuera posible utilizarlo sin problemas.

![Instalacion de Prolog](imagenes/instalacion.PNG)

Después probamos un poco el programa, en donde aprendimos que todos los comandos deben llevar punto al final, además de usar ; para conseguir otra respuesta posible.

![Comprobacion Punto](imagenes/Comprobacionpunto.PNG)

Después de esto creamos un archivo para generar nuestras reglas y hechos. Los archivos de prolog terminan en .pl.

![Creacion archivo 1](imagenes/Creacion1.PNG)

En este archivo generamos 3 personas (Priya, Natasha y Jasmin)m además de indicar que Priya sabe cocinar (can_cook).

![Prueba 1](imagenes/Prueba1.PNG)

Después creamos otro archivo, en el cual también definimos algunas reglas y hechos.

![Creacion archivo 2](imagenes/Creacion2.PNG)

![Prueba 2](imagenes/Prueba2.PNG)

** Segunda sesión**

Durante la segunda sesión utilizamos otro archivo, en donde en esta ocasión imprimía dos mensajes en la consola utilizando write.

![write creacion](imagenes/writecreacion.PNG)

![write prueba](imagenes/writeprueba.PNG)

Después generamos un nuevo código, esta vez generamos family.pl.

![Familia.pl](imagenes/familiacreacion.PNG)

![Familia uso](imagenes/Familiaprueba.PNG)

**Tercera sesión**

Durante la tercera sesión revisamos algunas de las aplicaciones con las que cuenta Prolog.

### El problema de las Torres de Hanoi

El Problema de las Torres de Hanói es un rompecabezas clásico que implica mover N discos de una torre de origen a una de destino, utilizando una torre intermedia como auxiliar. Para su resolución, se deben cumplir dos condiciones fundamentales:
-	No se puede colocar un disco más grande sobre uno más pequeño.
-	Solo se puede mover un disco a la vez.



El predicado `move(N,X,Y,Z)` modela el movimiento de N discos desde la torre de origen X a la torre de destino Y, con Z siendo la torre auxiliar. La primera regla, `move(1,X,Y,_)`, constituye el caso base: si solo hay un disco (N=1), este se mueve directamente del origen X al destino Y, y se imprime un mensaje indicando la acción. La segunda regla, `move(N,X,Y,Z)`, maneja el caso recursivo para más de un disco. Primero, se mueven N−1 discos de X a la torre auxiliar Z (usando Y como auxiliar). Luego, el disco más grande (el N-ésimo) se mueve de X a Y. Finalmente, los N−1 discos restantes se trasladan de la torre auxiliar Z al destino Y.

### Listas enlazadas
En Prolog, las listas enlazadas pueden representarse de manera flexible. La lista más elemental es nil (nula), que denota una lista vacía. Cualquier otra lista contendrá nil como el "siguiente" nodo al final. En la terminología de listas, el primer elemento se conoce como la cabeza de la lista, y el resto se denomina la cola. Por ejemplo, en la lista `node(2, node(5, node(6, nil)))`, la cabeza es 2 y la cola es `node(5, node(6, nil))`.

Los predicados presentados demuestran la manipulación básica de listas enlazadas en Prolog. Una lista enlazada se representa como node(Head, Tail), donde Head es el elemento actual y Tail es el resto de la lista.

-	`add_front(L,E,NList)`: Este predicado, que no utiliza recursión, tiene como objetivo añadir un elemento E al inicio de una lista enlazada existente L. El resultado es una NList (nueva lista) donde E se convierte en la nueva cabeza y L en la cola. Es decir, NList se unifica con node(E,L).
-	`add_back(nil, E, NList)`: Esta es la primera regla para añadir un elemento E al final de una lista. Constituye el caso base: si la lista de entrada es nil (vacía), el nuevo elemento E se convierte en el único nodo de la lista, formando node(E,nil).
-	`add_back(node(Head,Tail), E, NList)`: Esta es la regla recursiva. Si la lista no está vacía, se invoca add_back recursivamente con la cola de la lista actual (Tail) para localizar el final. Una vez que add_back(Tail, E, NewTail) unifica NewTail con la cola actualizada (con E añadido al final), el predicado construye NList como node(Head,NewTail), manteniendo la cabeza original y adjuntando la cola ya modificada.
add_front(L,E,NList) :- NList = node(E,L).
