// ignore_for_file: avoid_print
//
//  basic_unique_features.dart
//  MasteringDart
//
//  Capítulo 16 — Características únicas del lenguaje.
//  Nivel BÁSICO: Extension methods en Dart — añadir métodos a tipos existentes sin subclasificar.
//
//  Ejecutar con: dart run lib/chapters/chapter16/basic/basic_unique_features.dart

/// Extensión sobre String: añade reverse() e isPalindrome.
extension StringExt on String {
  String get reversed => split('').reversed.join();
  bool get isPalindrome => this == reversed;
}

/// Extensión sobre int: añade squared.
extension IntExt on int {
  int get squared => this * this;
}

void runBasicUniqueFeatureExamples() {
  final s = 'hello';
  print('Extension: "${s.reversed}" (reversed)');
  print('Extension: "aba".isPalindrome = ${'aba'.isPalindrome}');

  const n = 5;
  print('Extension: $n.squared = ${n.squared}');
}

void main() {
  runBasicUniqueFeatureExamples();
}
