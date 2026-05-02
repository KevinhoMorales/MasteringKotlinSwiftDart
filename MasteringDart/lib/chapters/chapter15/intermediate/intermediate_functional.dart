// ignore_for_file: avoid_print
//
//  intermediate_functional.dart
//  MasteringDart
//
//  Capítulo 15 — Programación funcional.
//  Nivel INTERMEDIO: map, filter, reduce sobre listas.
//
//  Ejecutar con: dart run lib/chapters/chapter15/intermediate/intermediate_functional.dart

void runIntermediateFunctionalExamples() {
  const numbers = [1, 2, 3, 4, 5, 6];

  final doubled = numbers.map((n) => n * 2).toList();
  print('map (double): $doubled');

  final evens = numbers.where((n) => n % 2 == 0).toList();
  print('filter (even): $evens');

  final sum = numbers.reduce((a, b) => a + b);
  print('reduce (sum): $sum');

  final result = numbers
      .map((n) => n * 2)
      .where((n) => n > 5)
      .reduce((a, b) => a + b);
  print('chain (double, filter >5, sum): $result');
}

void main() {
  runIntermediateFunctionalExamples();
}
