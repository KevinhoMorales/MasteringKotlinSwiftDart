// ignore_for_file: avoid_print
//
//  intermediate_collections.dart
//  MasteringDart
//
//  Capítulo 07 — Colecciones.
//  Nivel INTERMEDIO: filter, map, sort, min/max.
//
//  Ejecutar con: dart run lib/chapters/chapter07/intermediate/intermediate_collections.dart

/// Ejecuta ejemplos intermedios de colecciones.
void runIntermediateCollectionExamples() {
  // --- Filtrar elementos: mantener solo números pares ---
  const numbers = [1, 2, 3, 4, 5, 6];
  final evens = numbers.where((n) => n % 2 == 0).toList();
  print('Numbers: $numbers');
  print('Even numbers (filter): $evens');

  // --- Mapear valores: convertir nombres a mayúsculas ---
  const names = ['alice', 'bob', 'charlie'];
  final upperNames = names.map((s) => s.toUpperCase()).toList();
  print('Names: $names');
  print('Uppercase (map): $upperNames');

  // --- Ordenar una lista ---
  const unsorted = [3, 1, 4, 1, 5, 9, 2, 6];
  final sorted = List<int>.from(unsorted)..sort();
  print('Unsorted: $unsorted');
  print('Sorted: $sorted');

  // --- Encontrar máximo y mínimo ---
  const values = [10, 5, 20, 15, 8];
  final maxVal = values.reduce((a, b) => a > b ? a : b);
  final minVal = values.reduce((a, b) => a < b ? a : b);
  print('Values: $values -> max=$maxVal, min=$minVal');

  // --- Set: elementos únicos ---
  const withDuplicates = [1, 2, 2, 3, 3, 3];
  final uniqueSet = withDuplicates.toSet();
  print('With duplicates: $withDuplicates -> set: $uniqueSet');

  // --- Map: pares clave-valor ---
  final ages = {'Alice': 25, 'Bob': 30, 'Charlie': 25};
  print('Ages map: $ages');
  for (final entry in ages.entries) {
    print('  ${entry.key} is ${entry.value} years old');
  }
}

void main() {
  runIntermediateCollectionExamples();
}
