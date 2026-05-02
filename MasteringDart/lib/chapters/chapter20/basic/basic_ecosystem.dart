// ignore_for_file: avoid_print
//
//  basic_ecosystem.dart
//  MasteringDart
//
//  Capítulo 20 — Ecosistema y bibliotecas.
//  Nivel BÁSICO: StringUtils — módulo de utilidades simple (estilo biblioteca).
//
//  Ejecutar con: dart run lib/chapters/chapter20/basic/basic_ecosystem.dart

class StringUtils {
  static String capitalizeFirstLetter(String s) {
    if (s.isEmpty) return s;
    return s[0].toUpperCase() + s.substring(1);
  }

  static String reverseString(String s) {
    return s.split('').reversed.join();
  }
}

void runBasicEcosystemExamples() {
  print('StringUtils.capitalizeFirstLetter("hello"): ${StringUtils.capitalizeFirstLetter("hello")}');
  print('StringUtils.reverseString("world"): ${StringUtils.reverseString("world")}');
}

void main() {
  runBasicEcosystemExamples();
}
