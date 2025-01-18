# Scaffold en Flutter

El `Scaffold` es un widget fundamental en Flutter que proporciona una estructura básica para la interfaz de usuario de una aplicación. Ofrece una serie de características y elementos de diseño que ayudan a crear una experiencia de usuario coherente y funcional.

## Propósitos Principales

- **Estructura de la Pantalla**: Proporciona una estructura básica para la aplicación, incluyendo áreas como la barra de aplicaciones, el cuerpo, el menú de navegación y el fondo.
- **Integración de Widgets Comunes**: Facilita la inclusión de widgets comunes como `AppBar`, `BottomNavigationBar`, `FloatingActionButton`, entre otros.

## Propiedades Comunes

- **appBar**: Un widget que se muestra en la parte superior de la pantalla (generalmente un `AppBar`).
- **body**: El contenido principal de la aplicación, donde se coloca el widget que se desea mostrar.
- **floatingActionButton**: Un botón que flota sobre el contenido principal, comúnmente utilizado para acciones importantes.
- **drawer**: Un menú lateral que se puede abrir deslizando desde el borde izquierdo de la pantalla.

## Ejemplo de Uso

```dart
import 'package:flutter/material.dart';

class MyScaffoldExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo de Scaffold'),
      ),
      body: Center(
        child: Text('Contenido Principal'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Acción al presionar el botón
        },
        child: Icon(Icons.add),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Encabezado del Menú'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Elemento 1'),
              onTap: () {
                // Acción al seleccionar el elemento
              },
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyScaffoldExample(),
  ));
}
