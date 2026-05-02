// ignore_for_file: avoid_print
//
//  intermediate_error_handling.dart
//  MasteringDart
//
//  Capítulo 12 — Manejo de errores.
//  Nivel INTERMEDIO: Error personalizado, validación de edad (throw si edad < 18).
//
//  Ejecutar con: dart run lib/chapters/chapter12/intermediate/intermediate_error_handling.dart

/// Excepción personalizada para edad inválida.
class InvalidAgeException implements Exception {
  final String message;
  InvalidAgeException(this.message);
  @override
  String toString() => message;
}

/// Valida la edad: lanza InvalidAgeException si edad < 18.
int validateAge(int age) {
  if (age < 18) {
    throw InvalidAgeException('Age must be at least 18, got $age');
  }
  return age;
}

void runIntermediateErrorHandlingExamples() {
  // --- Edad válida ---
  try {
    final age = validateAge(25);
    print('Valid age: $age');
  } on InvalidAgeException catch (e) {
    print('Error: $e');
  }

  // --- Edad inválida: capturar y mostrar ---
  try {
    validateAge(15);
    print('Valid');
  } on InvalidAgeException catch (e) {
    print('Caught: $e');
  }

  // --- Múltiples validaciones ---
  for (final age in [20, 16, 18]) {
    try {
      validateAge(age);
      print('$age: OK');
    } on InvalidAgeException catch (e) {
      print('$age: $e');
    }
  }
}

void main() {
  runIntermediateErrorHandlingExamples();
}
