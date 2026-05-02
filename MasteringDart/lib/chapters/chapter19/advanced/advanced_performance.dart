// ignore_for_file: avoid_print
//
//  advanced_performance.dart
//  MasteringDart
//
//  Capítulo 19 — Rendimiento y optimización.
//  Nivel AVANZADO: Dos enfoques, medir tiempo de ejecución.
//
//  Ejecutar con: dart run lib/chapters/chapter19/advanced/advanced_performance.dart

void runAdvancedPerformanceExamples() {
  const size = 50000;
  final list = List.generate(size, (i) => i);

  final sw1 = Stopwatch()..start();
  final result1 = list
      .where((n) => n % 2 == 0)
      .map((n) => n * 2)
      .fold<int>(0, (a, b) => a + b);
  sw1.stop();
  print('Approach 1 (filter→map→fold): result=$result1, ${sw1.elapsedMilliseconds}ms');

  final sw2 = Stopwatch()..start();
  var result2 = 0;
  for (final n in list) {
    if (n % 2 == 0) result2 += n * 2;
  }
  sw2.stop();
  print('Approach 2 (single loop):     result=$result2, ${sw2.elapsedMilliseconds}ms');

  print('Same result: ${result1 == result2}');
}

void main() {
  runAdvancedPerformanceExamples();
}
