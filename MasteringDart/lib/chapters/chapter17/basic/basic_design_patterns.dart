// ignore_for_file: avoid_print
//
//  basic_design_patterns.dart
//  MasteringDart
//
//  Capítulo 17 — Patrones de diseño.
//  Nivel BÁSICO: Singleton — una única instancia compartida (factory + static _instance).
//
//  Ejecutar con: dart run lib/chapters/chapter17/basic/basic_design_patterns.dart

class AppConfig {
  AppConfig._();
  static final AppConfig _instance = AppConfig._();
  factory AppConfig() => _instance;

  final String appName = 'Mastering Dart';
  final String version = '1.0';
}

void runBasicDesignPatternExamples() {
  final a = AppConfig();
  final b = AppConfig();
  print('AppConfig().appName = ${a.appName}');
  print('AppConfig().version = ${a.version}');
  print('Same instance: ${identical(a, b)}');
}

void main() {
  runBasicDesignPatternExamples();
}
