# ¿Qué es un MediaQuery en Flutter?

Un **MediaQuery** en Flutter es una herramienta que permite obtener información sobre las dimensiones y características del dispositivo en el que se está ejecutando la aplicación. Esto incluye detalles como el tamaño de la pantalla, la orientación, la densidad de píxeles, entre otros. Con esta información, puedes adaptar la interfaz de usuario de tu aplicación para que se vea bien en diferentes dispositivos.

## Características de MediaQuery

1. **Tamaño de la Pantalla**:
   - Puedes obtener el ancho y la altura de la pantalla del dispositivo.

2. **Orientación**:
   - Permite saber si el dispositivo está en modo retrato (portrait) o paisaje (landscape).

3. **Densidad de Píxeles**:
   - Proporciona información sobre la densidad de píxeles, lo que es útil para adaptar imágenes y elementos visuales.

4. **Espacios de Visualización**:
   - Permite acceder a información sobre los márgenes, como el área ocupada por la barra de estado y la barra de navegación.

## Uso de MediaQuery

Para usar `MediaQuery`, generalmente se accede a él a través del contexto de la aplicación. Aquí hay un ejemplo básico de cómo usar `MediaQuery` en un widget:

```dart
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Obtener la información de MediaQuery
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo de MediaQuery'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Ancho de la pantalla: $screenWidth'),
            Text('Altura de la pantalla: $screenHeight'),
            // Ajustar el tamaño de un contenedor según el ancho de la pantalla
            Container(
              width: screenWidth * 0.8, // 80% del ancho de la pantalla
              height: 100,
              color: Colors.blue,
              child: Center(child: Text('Contenedor ajustado')),
            ),
          ],
        ),
      ),
    );
  }
}
