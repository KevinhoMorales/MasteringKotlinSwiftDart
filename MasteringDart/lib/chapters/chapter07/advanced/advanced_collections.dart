// ignore_for_file: avoid_print
//
//  advanced_collections.dart
//  MasteringDart
//
//  Capítulo 07 — Colecciones.
//  Nivel AVANZADO: Procesamiento de datos (calificaciones, productos).
//
//  Ejecutar con: dart run lib/chapters/chapter07/advanced/advanced_collections.dart

/// Ejecuta ejemplos avanzados de colecciones.
void runAdvancedCollectionExamples() {
  // --- Sistema de calificaciones: map de nombre a puntuación ---
  final grades = <String, int>{
    'Alice': 85,
    'Bob': 92,
    'Charlie': 78,
    'Diana': 95,
    'Eve': 88,
  };
  print('========================================');
  print('       STUDENT GRADES & PRODUCTS');
  print('========================================');
  print('\n--- Grades ---');
  print('Grades: $grades');

  final scores = grades.values;
  final averageScore =
      scores.reduce((a, b) => a + b) / scores.length;
  print('Average score: $averageScore');

  const highScoreThreshold = 85;
  final highScores =
      Map.fromEntries(grades.entries.where((e) => e.value >= highScoreThreshold));
  print('Students with score >= $highScoreThreshold: $highScores');

  // --- Lista de productos con precios (lista de registros o pares) ---
  final products = [
    ('Apple', 1.50),
    ('Banana', 0.80),
    ('Orange', 2.00),
    ('Milk', 3.20),
  ];
  print('\n--- Products ---');
  for (final item in products) {
    print('  ${item.$1}: \$${item.$2}');
  }
  final totalPrice = products.fold<double>(0, (sum, p) => sum + p.$2);
  final avgPrice = totalPrice / products.length;
  print('Total price: \$$totalPrice');
  print('Average price: \$$avgPrice');

  // --- Filtrar productos caros (precio >= 2.0) ---
  final expensive = products.where((p) => p.$2 >= 2.0).toList();
  print('Products with price >= 2.0: $expensive');
  print('========================================');
}

void main() {
  runAdvancedCollectionExamples();
}
