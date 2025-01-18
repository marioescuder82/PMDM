# ListView en Flutter

`ListView` es un widget en Flutter que permite mostrar una lista de elementos de manera desplazable. Es especialmente útil cuando se trabaja con grandes cantidades de datos, ya que carga solo los elementos visibles en pantalla, mejorando así el rendimiento.

## Tipos de ListView

1. **ListView.builder**: Crea un `ListView` que se construye de forma perezosa. Solo se construyen los elementos que están visibles en la pantalla.
   
   ```dart
   ListView.builder(
     itemCount: 100,
     itemBuilder: (context, index) {
       return ListTile(
         title: Text('Elemento $index'),
       );
     },
   );
