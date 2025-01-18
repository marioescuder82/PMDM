# onPressed en Flutter

El `onPressed` es una propiedad que se utiliza en widgets interactivos, como `ElevatedButton`, `FlatButton`, `IconButton`, entre otros. Esta propiedad recibe una función que se ejecuta cuando el usuario presiona el botón.

## Uso Básico

La propiedad `onPressed` permite definir la acción que se debe realizar al presionar el botón. Si se establece como `null`, el botón se deshabilitará y no responderá a los toques.

### Ejemplo de Uso

```dart
import 'package:flutter/material.dart';

class MyButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo de onPressed'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Acción a realizar al presionar el botón
            print('Botón presionado!');
          },
          child: Text('Presionar'),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyButtonExample(),
  ));
}
