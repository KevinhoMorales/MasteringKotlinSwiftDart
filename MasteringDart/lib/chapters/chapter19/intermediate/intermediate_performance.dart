// ignore_for_file: avoid_print
//
//  intermediate_performance.dart
//  MasteringDart
//
//  Capítulo 19 — Rendimiento y optimización.
//  Nivel INTERMEDIO: Encontrar máximo — un solo paso vs ordenar-y-último.
//
//  Ejecutar con: dart run lib/chapters/chapter19/intermediate/intermediate_performance.dart

void runIntermediatePerformanceExamples() {
  final list = List.generate(10000, (i) => i);

  var max1 = list.first;
  for (final n in list) if (n > max1) max1 = n;
  print('Max (single pass): $max1');

  final sorted = List<int>.from(list)..sort();
  final max2 = sorted.last;
  print('Max (sort then last): $max2');

  print('Max (built-in): ${list.reduce((a, b) => a > b ? a : b)}');
}

void main() {
  runIntermediatePerformanceExamples();
}
