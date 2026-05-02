// ignore_for_file: avoid_print
//
//  basic_generics.dart
//  MasteringDart
//
//  Capítulo 11 — Genéricos.
//  Nivel BÁSICO: Contenedor genérico Box<T> — almacenar e imprimir distintos tipos.
//
//  Ejecutar con: dart run lib/chapters/chapter11/basic/basic_generics.dart

/// Contenedor genérico: T es el parámetro de tipo. La misma clase sirve para cualquier tipo.
class Box<T> {
  final T value;
  Box(this.value);
  T getValue() => value;
  void printValue() {
    print('Box contains: $value');
  }
}

void runBasicGenericsExamples() {
  final intBox = Box<int>(42);
  final stringBox = Box<String>('Hello');
  final doubleBox = Box<double>(3.14);

  intBox.printValue();
  stringBox.printValue();
  doubleBox.printValue();

  final n = intBox.getValue();
  final s = stringBox.getValue();
  print('Unwrapped: $n, $s');
}

void main() {
  runBasicGenericsExamples();
}
