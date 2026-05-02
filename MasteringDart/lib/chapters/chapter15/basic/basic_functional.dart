// ignore_for_file: avoid_print
//
//  basic_functional.dart
//  MasteringDart
//
//  Capítulo 15 — Programación funcional.
//  Nivel BÁSICO: Funciones puras — mismo entrada → misma salida; sin efectos secundarios.
//
//  Ejecutar con: dart run lib/chapters/chapter15/basic/basic_functional.dart

/// Función pura: duplica un número.
int doubleNum(int n) => n * 2;

/// Función pura: devuelve el cuadrado de un número.
int square(int n) => n * n;

/// Función pura: formatea un string con un prefijo.
String formatWithPrefix(String s, String prefix) => '$prefix$s';

void runBasicFunctionalExamples() {
  print('double(5) = ${doubleNum(5)}');
  print('square(4) = ${square(4)}');
  print('formatWithPrefix("world", "Hello, ") = ${formatWithPrefix("world", "Hello, ")}');
}

void main() {
  runBasicFunctionalExamples();
}
