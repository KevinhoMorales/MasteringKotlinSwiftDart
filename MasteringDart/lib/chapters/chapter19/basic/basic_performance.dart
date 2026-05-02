// ignore_for_file: avoid_print
//
//  basic_performance.dart
//  MasteringDart
//
//  Capítulo 19 — Rendimiento y optimización.
//  Nivel BÁSICO: Eficiente vs ineficiente — bucle vs built-in, valores en caché.
//
//  Ejecutar con: dart run lib/chapters/chapter19/basic/basic_performance.dart

void runBasicPerformanceExamples() {
  const numbers = [1, 2, 3, 4, 5];

  var sumLoop = 0;
  for (final n in numbers) sumLoop += n;
  print('Sum (loop): $sumLoop');

  final sumBuiltIn = numbers.reduce((a, b) => a + b);
  print('Sum (built-in reduce): $sumBuiltIn');

  final list = List.generate(100, (i) => i);
  const factor = 2;
  var sumRepeated = 0;
  for (final n in list) sumRepeated += n * factor;
  final doubled = list.map((n) => n * factor).toList();
  var sumCached = 0;
  for (final n in doubled) sumCached += n;
  print('Sum repeated calc: $sumRepeated, cached: $sumCached');
}

void main() {
  runBasicPerformanceExamples();
}
