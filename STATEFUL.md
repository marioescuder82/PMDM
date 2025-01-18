# StatefulWidget en Flutter

Un `StatefulWidget` es un tipo de widget en Flutter que tiene un estado que puede cambiar durante el ciclo de vida del widget. A diferencia de un `StatelessWidget`, que es inmutable, un `StatefulWidget` puede actualizarse y redibujarse en respuesta a eventos o cambios en su estado.

## Estructura Básica

Un `StatefulWidget` se compone de dos clases:

1. **La clase del widget**: Extiende de `StatefulWidget`.
2. **La clase de estado**: Extiende de `State<T>` donde `T` es el tipo del widget.

### Ejemplo de Uso

```dart
import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo de StatefulWidget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Contador: $_counter'),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text('Incrementar'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyStatefulWidget(),
  ));
}
