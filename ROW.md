# Row en Flutter

El widget `Row` organiza sus hijos en una disposición horizontal.

## Propiedades Principales

- **children**: Lista de widgets que se mostrarán en la fila.
- **mainAxisAlignment**: Controla la alineación de los hijos a lo largo del eje principal (horizontal).
- **crossAxisAlignment**: Controla la alineación de los hijos a lo largo del eje cruzado (vertical).
- **mainAxisSize**: Determina si la fila ocupará el espacio máximo disponible o solo el espacio necesario.

## Ejemplo de Uso

```dart
import 'package:flutter/material.dart';

class MyRowExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo de Row'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('Elemento A'),
          Text('Elemento B'),
          Text('Elemento C'),
        ],
      ),
    );
 
