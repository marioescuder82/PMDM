# Navegación en Flutter con Routes

## 1. Definición de Rutas

Las rutas en Flutter son representaciones de las pantallas (o páginas) de tu aplicación. Puedes definir rutas de manera simple usando el `MaterialApp` y el parámetro `routes`.

## 2. Uso de `Navigator`

Flutter utiliza el widget `Navigator` para gestionar la pila de rutas. Puedes navegar hacia adelante y hacia atrás en esta pila.

## Ejemplo de Navegación entre Páginas

Aquí tienes un ejemplo sencillo que muestra cómo navegar entre dos páginas:

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplo de Rutas',
      initialRoute: '/',
      routes: {
        '/': (context) => PaginaInicio(),
        '/segunda': (context) => PaginaSegunda(),
      },
    );
  }
}

class PaginaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página de Inicio'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/segunda');
          },
          child: Text('Ir a la Segunda Página'),
        ),
      ),
    );
  }
}

class PaginaSegunda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Página'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Volver a la Página de Inicio'),
        ),
      ),
    );
  }
}
