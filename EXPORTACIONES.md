# Exportaciones en Flutter

Los **exports** en Flutter (y Dart en general) te permiten simplificar la gestión de importaciones en tus archivos. Al usar `export`, puedes agrupar varias importaciones en un solo archivo y luego importar ese archivo en lugar de cada uno de los archivos individuales. Esto ayuda a mantener tu código más limpio y organizado.

## Cómo Funcionan los Exports en Flutter

### Definición de un Archivo de Exportación

Crea un archivo que contendrá todas las importaciones que deseas agrupar. Por ejemplo, puedes crear un archivo llamado `mis_exports.dart`.

```dart
// mis_exports.dart
export 'modelo_usuario.dart';
export 'servicio_api.dart';
export 'widget_personalizado.dart';
```

Luego, en cualquier archivo donde necesites usar esos imports, simplemente importa el archivo de exportación en lugar de cada uno de los archivos individuales.

```dart
// main.dart
import 'mis_exports.dart';

void main() {
  // Ahora puedes usar las clases y funciones de 
  // modelo_usuario.dart, servicio_api.dart y widget_personalizado.dart
}
```