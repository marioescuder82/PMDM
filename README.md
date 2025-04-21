# Programación multimedia y dispositivos móviles
Asignatura Programación multimedia y dispositivos móviles de 2º curso del ciclo de grado suerior Desarrollo de Aplicaciones Multimedia.

## Flutter

### Entregas

- [X] **Práctica 1: Calculadora**
  - En esta práctica tenemos que desarrollar una calculadora básica con algunas funcionalidades avanzadas, tomando como base la aplicación Contador.
  - Esta calculadora realizará las operaciones básicas (suma, resta, multiplicación y división) y al menos una operación avanzada (puede ser inventada, como por ejemplo una operación ++ que sume al primer número dos veces el segundo). 
  - Además, incorporará un botón C para hacer un "clear" de la pantalla.
  - La calculadora será capaz de sumar números de cualquier longitud.
  - El proyecto debe incluir una carpeta widgets dentro de la carpeta lib. Esta carpeta contendrá dos ficheros, uno con un widget para el texto de nuestros botones y otro con un widget para el propio botón.
  - **Temas clave**:
  	- [Widgets](WIDGETS.md)
    - Widgets con múltiples hijos: [column](COLUMN.md) y [row](ROW.md)
	- [StatefulWidget](STATEFUL.md)
	- [onPressed](ONPRESSED.md)
	- [setState](SETSTATE.md)
  
- [X] **Práctica 2: Chomón App**
  - En esta práctica tenemos que desarrollar una aplicación que nos permita acceder a toda la información relevante de nuestros estudios en el IES Segundo de Chomón.
  - La aplicación tendrá al menos las siguientes páginas:
    - Home: esta página incluirá un menú de acceso a las siguientes páginas.
	- Calendario: esta página incluirá un calendario mensual en el que aparecerán resaltadas las fechas importantes (inicio y final de curso, evaluaciones, etc). Debajo del calendario, habrá una lista detallada de que significa cada fecha.
	- Asignaturas: en esta página tendremos un menú con todas nuestras asignaturas. La página de cada asignatura tendrá una serie de "cards" con información relevante al respecto: Profesor, Programación, Fechas de examenes (y lo que se os ocurra)
	- Contactos: esta página mostrará una lista de contactos. Cada contacto será un "card" con la información de esa persona: Nombre, email, teléfono, etc.
	- **Temas clave**
	  - [Navegación](NAVEGACION.md)
	  - [Scaffold](SCAFFOLD.md)
	  - [ListView](LISTVIEW.md)
	  - [Operador spread (...)](SPREAD.md)
	  - [Snippets](SNIPPETS.md)
	  - [Exportaciones](EXPORTACIONES.md)
	  - [Iconos disponibles en Flutter](https://api.flutter.dev/flutter/material/Icons-class.html)
	  - Card
	  
- [X] **Práctica 3: MusicDB**
  - En esta práctica vamos a desarrollar una aplicación que utilizará la REST API de https://www.theaudiodb.com/
  - En la página principal, mostraremos un listado de todos los artistas. Al clickar sobre uno de ellos, nos llevará a su página.
  - La página de cada artista contendrá sus datos (nombre, descripción, etc) y un listado de las carátulas de sus discos.
  - Al clickar sobre cada una de las carátulas, nos llevará a la página del disco.
  - Podemos utilizar algún widget como https://pub.dev/packages/flutter_card_swiper para mostrar las carátulas de los discos
  - **Temas clave**
    - [Complementos](COMPLEMENTOS.md)	
	- [Temas](TEMAS.md)
	- [Media Query](MEDIA_QUERY.md)
	- Repositorio de paquetes (pub.dev)
	- Uso de REST APIs
	- Postman
	- Providers
	- Quicktype.io
	
- [X] **Práctica 4: Entrega libre**
  - En esta práctica debemos entregar una App que incluya, al menos:
    - Un formulario de acceso
	- Un formulario de registro
	- Una página que muestre información de una consulta privada a una BBDD en Firebase.
	- La página anterior debe permitir crear, modificar o eliminar. Por ejemplo, podemos crear una BBDD de productos. La página mostraría un listado de los productos disponibles, y nos daría la opción de borrarlos, modificarlos o crear uno nuevo.
	- Las operaciones CRUD y la autenticación deben realizarse tanto con peticiones http como con los métodos de la libreria Flutterfire
	- Debeis utilizar al menos dos componentes de pub.dev o de fluttergems.dev
  - **Temas clave**
    - Firebase
	  - [Firebase Realtime Database](https://firebase.google.com/docs/database?hl=es-419)
	    - [Acceso desde Flutter con Flutterfire](https://firebase.google.com/docs/flutter/setup?platform=web&hl=es-419)
		- [Acceso desde Flutter con peticiones http](https://firebase.google.com/docs/database/rest/start?hl=es-419)
	  - [Firebase Realtime Database de acceso público](FIREBASE1.md)
	  - Firestore
	    - [Acceso desde Flutter con peticiones http](https://firebase.google.com/docs/firestore/use-rest-api?hl=es-419)
      - [Firebase Auth Rest API](https://firebase.google.com/docs/reference/rest/auth?hl=es-419)
	  - Login y manejo de Tokens
	- Formularios en Flutter
	- Flutterfire
	  - [Documentación oficial](https://firebase.flutter.dev/)
	- [Bottom menu](BOTTOM_MENU.md)
	- [Idioma del dispositivo](https://pub.dev/packages/devicelocale/example)
	- [Configurar varios idiomas en la App](https://docs.flutter.dev/ui/accessibility-and-internationalization/internationalization)
	- [Light theme, darke theme](TEMAS_LD.md)

### Listado de APIs públicas

- [APIs](https://github.com/public-apis/public-apis?tab=readme-ov-file)

### Entregas

- [X] Calculadora **26/1/2025**
  - https://classroom.github.com/a/TsUGdctw
- [X] Chomón App **9/2/2025**
  - https://classroom.github.com/a/1AE6Qt0-
- [X] MusicDB **19/2/2025**
  - https://classroom.github.com/a/uloH2nqA
- [X] Entrega libre **4/3/2025** (Defensa **6/3/2025**)
  - El **18/2/2025** se debe entregar durante la clase la propuesta de App
  - https://classroom.github.com/a/D7UGAMOx

### Recuperación
- [X] Entrega libre **11/3/2025** (Defensa **13/3/2025**)
  - En la entrega de la recuperación debes seguir lo mencionado anterioremente para la Práctica 4. Además, debes hacer una consulta a una API REST pública mediante peticiones http. Es decir, si por ejemplo desarrollas la App de un concesionario que utiliza una BBDD de Firebase para almacenar la información acerca de los vehículos, etc puedes consultar una API REST pública para mostrar fotografías de dichos vehículos. En cuanto al uso de componentes de pub.dev o fluttergems.dev, debes utilizar 3 en lugar de dos, y al menos 1 debe ser de pub.dev y otro de fluttergems.dev
  - https://classroom.github.com/a/D7UGAMOx