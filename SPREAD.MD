# Operador Spread en Dart

El operador spread (`...`) en Dart se utiliza para expandir los elementos de una colección (como listas o conjuntos) dentro de otra colección. Esto permite una forma más concisa y legible de combinar o agregar elementos a colecciones.

## Sintaxis

```dart
void main() {
  var lista1 = [1, 2, 3];
  var lista2 = [4, 5, 6];

  var listaCombinada = [...lista1, ...lista2];

  print(listaCombinada); // Salida: [1, 2, 3, 4, 5, 6]
}
