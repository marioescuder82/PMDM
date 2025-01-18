# Column en Flutter

El widget `Column` organiza sus hijos en una disposición vertical.

## Propiedades Principales

- **children**: Lista de widgets que se mostrarán en la columna.
- **mainAxisAlignment**: Controla la alineación de los hijos a lo largo del eje principal (vertical).
- **crossAxisAlignment**: Controla la alineación de los hijos a lo largo del eje cruzado (horizontal).
- **mainAxisSize**: Determina si la columna ocupará el espacio máximo disponible o solo el espacio necesario.

## Ejemplo de Uso

```dart
import 'package:flutter/material.dart';

class MyColumnExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo de Column'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Elemento 1'),
          Text('Elemento 2'),
          Text('Elemento 3'),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyColumnExample(),
  ));
}
