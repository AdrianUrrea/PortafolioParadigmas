+++
title = 'Practica0'
date = 2025-05-29
draft = true
+++

## **Introducción**

El uso de repositorios es importante, pues con ellos es posible almacenar todos nuestros avances de códigos, ya que guardan el historial de cambios y cuenta con un fácil acceso a ellos. Gracias a GitHub es posible acceder a la creación de los repositorios de una forma más sencilla.

Durante estas sesiones se vio el uso de GitHub, Git, Git Bash, Hugo y GitHub Actions para la creación de repositorios y la facilidad del manejo de estos con comandos implementados en la terminal.

## **Desarrollo**

### **Sesión 1**

Durante la primera sesión, revisamos las bases de MarkDown, el cual es un lenguaje que permite convertir texto fácilmente en HTML. MarkDown usa una sintaxis simplificada que permite que el texto mantenga una buena legibilidad, incluso sin ser procesado.

MarkDown se usa para crear documentos con formato, los cuales utilizan la extensión .md y pueden ser interpretados y convertidos a HTML con la ayuda de un procesador MarkDown.

Para esta sesión utilizamos Visual Studio Code para realizar un documento .md para revisar la sintaxis del lenguaje.

Entre la sintaxis podemos encontrar:

* **Encabezados:** Se usan los símbolos # para crearlos. El número de # determina el nivel del encabezado.
* **Listas:** Es posible crear listas utilizando * o - .
* **Enlaces:** Es posible agregar enlaces de páginas web para generar un fácil acceso.
* **Imágenes:** Al igual que con los enlaces, al agregar el URL de la imágen es posible observarla en el documento.
* **Negrita y cursiva:** Utilizando * es posible convertir las palabras a cursiva, y ** para convertirlas a negritas.
* **Código:** Es posible implementar bloques de código de otro lenguaje.
* **Tablas:** Es posible generar tablas con MarkDown.

### **Sesión 2**

Durante la realización de la segunda sesión revisamos con detalle varios de los comandos que están implementados en Git, además de que revisamos cómo subir la información A GitHub, como crear repositorios y como subirlos a la nube.

**Git:** Es un sistema de control de versiones distribuido que permite a los desarrolladores gestionar y realizar un seguimiento de los cambios en el código fuente de un proyecto a lo largo del tiempo.
**GitHub:** Es una plataforma basada en la web que permite almacenar repositorios Git en la nube, también agrega herramientas colaborativas como la posibilidad de hacer pull requests, revisiones de código, gestión de proyectos, entre otros.

**Comandos:**

* **git init:** Inicializa un repositorio Git.
* **git add .:** Añade archivos a git.
* **git commit -m "Mensaje de commit.":** Guardan los cambios realizados. Cada commit debe ir acompañado de un mensaje que explique qué se ha hecho.
* **git remote add origin <URL>:** Crea un repositorio en GitHub con un URL y lo conecta al repositorio local.
* **git push -u origin master:** Sube los cambios a GitHub.
* **git init:** Ve el estado del repositorio.

Utilizando estos comandos es posible generar los repositorios y subirlos a la nube, específicamente en esta práctica subimos un archivo .md que contiene la sintaxis de MarkDown.

### **Sesión 3**

Durante la tercera sesión combinamos lo aprendido con MarkDown y Git para generar páginas estáticas con Hugo y GitHub Actions.

**Hugo:** Es un generador de sitios estáticos rápido y flexible. Con él puedes crear un sitio web usando archivos de contenido que después serán procesados y convertidos en un sitio web estático.

**GitHub Actions:** Es una plataforma de integración continua y entrega continua que permite automatizar los flujos de trabajo de desarrollo. Con GitHub Actions es posible configurar tareas que se ejecuten automáticamente al realizar ciertas acciones en tu repositorio, como hacer un push o abrir u pull request.

Para generar una página estática con hugo es necesario seguir una serie de pasos:

* **Crear proyecto:** hugo new site <nombre-de-sitio>.
* **Agregar un tema:** Es necesario agregar un tema al sitio estático, en nuestro caso utilizamos ananke.
* **Crear contenido en MarkDown:** Básicamente creamos los archivos que se subirán/estarán en la página estática.
* **Generar sitio:** Ejecutamos el comando "hugo" para generar el sitio. Para encender el server utilizamos "hugo serve", para después entrar al URL otorgado por el servidor, donde observaremos la página estática.
* **Subir a GitHub:** Utilizamos push para subir los cambios a GitHub.


Para publicar la página con GitHub Actions es necesario generar un archivo en el directorio ".github/workflows/hugo.yaml", en donde añadiremos la información necesaria para generar el flujo de trabajo.

Por último realizamos push al repositorio, GitHub Actions automáticamente construirá el sitio y lo desplegará en GitHub, en donde se encontrará el URL de la página.

## **Conclusiones**

Durante esta práctica tuve bastantes dificultades, pues al no llevar computadora propia a los laboratorios se me complica el mantenerme al día con las actividades, pues las computadoras otorgadas por la escuela no permiten instalar algunas de las cosas requeridas para las prácticas, por lo que al realizar la práctica en mi casa me encontré confundido en varias ocasiones.

Si bien la sesión 1 y la sesión 2 no me generaron grandes dificultades, no puedo decir lo mismo de la sesión 3, pues no logré realizar mi página estática con GitHub Actions. Utilizando los videos de apoyo, incluso con IA, no logré completar la actividad. Al seguir los pasos del video hecho por el profesor, en el último paso de modificar el archivo hugo.toml y hacer git push, mi terminal me mostraba un error, el cual por mucho que lo intenté no pude solucionar, incluso pidiendo ayuda a compañeros que sí lograron hacer su página. 

Quitando este problema, fue una práctica entretenida de realizar.