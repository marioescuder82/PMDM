# Cambiar el Tema en Flutter

Cambiar el tema en Flutter es un proceso sencillo que te permite personalizar la apariencia de tu aplicación. Flutter proporciona una forma fácil de definir temas utilizando el widget `ThemeData`. A continuación, te explico cómo hacerlo.

## Cambiar el Tema en Flutter

### 1. Definir el Tema

Puedes definir un tema global para tu aplicación utilizando el parámetro `theme` en el widget `MaterialApp`. Aquí puedes especificar colores, fuentes y otros estilos.

### Ejemplo de Cambio de Tema

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplo de Tema',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Color principal
        accentColor: Colors.orange,   // Color de acento
        textTheme: TextTheme(
          bodyText1: TextStyle(fontSize: 20, color: Colors.black), // Estilo de texto
        ),
      ),
      home: PaginaInicio(),
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
        child: Text('¡Hola, Flutter!'),
      ),
    );
  }
}
