// ignore_for_file: avoid_print
//
//  basic_variables.dart
//  MasteringDart
//
//  Capítulo 03 — Variables, constantes y tipos básicos.
//  Nivel BÁSICO: Ejemplos muy breves que muestran la sintaxis.
//
//  Cubre: variables, constantes, inferencia de tipos, tipos numéricos,
//  booleanos, cadenas e interpolación de cadenas.
//
//  Ejecutar con: dart run lib/chapters/chapter03/basic/basic_variables.dart

/// Ejecuta todos los ejemplos básicos de variables y tipos.
void runBasicExamples() {
  // --- Variables (mutables: 'var') ---
  var count = 0;
  count = 5;
  print('Variable count: $count');

  // --- Constantes (inmutables: 'final' o 'const') ---
  final appName = 'Mastering Dart';
  const appVersion = 1;
  print('Constant appName: $appName, version: $appVersion');

  // --- Inferencia de tipos (el compilador infiere el tipo) ---
  final inferredInt = 42;
  final inferredDouble = 3.14;
  final inferredString = 'hello';
  print(
      'Inferred types: $inferredInt (int), $inferredDouble (double), $inferredString (String)');

  // --- Tipos explícitos ---
  const int explicitAge = 25;
  const double explicitPrice = 9.99;
  print('Explicit: age=$explicitAge, price=$explicitPrice');

  // --- Tipos numéricos básicos ---
  const int intValue = 2000000;
  const double doubleValue = 2.71828;
  // Dart tiene int y double como tipos numéricos principales (num es el supertipo)
  print('Numeric types: int=$intValue, double=$doubleValue');

  // --- Valores booleanos ---
  const bool isActive = true;
  const bool hasPermission = false;
  print('Booleans: isActive=$isActive, hasPermission=$hasPermission');

  // --- Cadenas ---
  const greeting = 'Hello, Dart!';
  const multiline = '''
    Line one
    Line two
  ''';
  print('String: $greeting');
  print('Multiline:\n$multiline');

  // --- Interpolación de cadenas ---
  const name = 'Reader';
  const version = 1;
  print('Interpolation: Hello, $name! Version $version.');
  print('Expression: 2 + 2 = ${2 + 2}');
}

void main() {
  runBasicExamples();
}
