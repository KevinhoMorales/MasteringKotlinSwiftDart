// ignore_for_file: avoid_print
//
//  basic_error_handling.dart
//  MasteringDart
//
//  Capítulo 12 — Manejo de errores.
//  Nivel BÁSICO: try/catch, división por cero, imprimir mensajes de error.
//
//  Ejecutar con: dart run lib/chapters/chapter12/basic/basic_error_handling.dart

/// División segura: devuelve a/b o null si b es cero (evita excepción).
double? safeDivide(double a, double b) {
  if (b == 0) return null;
  return a / b;
}

void runBasicErrorHandlingExamples() {
  // --- try/catch: manejar división por cero (la división entera lanza) ---
  try {
    final result = 10 ~/ 0; // división entera por cero lanza
    print('Result: $result');
  } catch (e) {
    print('Error: $e');
  }

  // --- Usar safeDivide (sin excepción) ---
  print('safeDivide(10, 2) = ${safeDivide(10, 2)}');
  print('safeDivide(10, 0) = ${safeDivide(10, 0)}');

  // --- try/catch con throw explícito ---
  try {
    const x = 5.0;
    const y = 0.0;
    if (y == 0) throw Exception('Division by zero');
    print('x / y = ${x / y}');
  } catch (e) {
    print('Caught: $e');
  }
}

void main() {
  runBasicErrorHandlingExamples();
}
