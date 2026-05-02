// ignore_for_file: avoid_print
//
//  basic_operators.dart
//  MasteringDart
//
//  Capítulo 04 — Operadores y expresiones.
//  Nivel BÁSICO: Ejemplos simples con operadores aritméticos.
//
//  Cubre: suma, resta, multiplicación, división, módulo.
//
//  Ejecutar con: dart run lib/chapters/chapter04/basic/basic_operators.dart

/// Ejecuta ejemplos básicos de operadores aritméticos.
void runBasicOperatorExamples() {
  const a = 20;
  const b = 6;

  // --- Suma (+) ---
  final sum = a + b;
  print('Addition: $a + $b = $sum');

  // --- Resta (-) ---
  final difference = a - b;
  print('Subtraction: $a - $b = $difference');

  // --- Multiplicación (*) ---
  final product = a * b;
  print('Multiplication: $a * $b = $product');

  // --- División (/) — división entera cuando ambos operandos son int ---
  final quotient = a ~/ b; // ~/ es la división entera en Dart
  print('Division (integer): $a ~/ $b = $quotient');

  // --- División con double para resultado fraccionario ---
  const aDouble = 20.0;
  const bDouble = 6.0;
  final quotientDouble = aDouble / bDouble;
  print('Division (double): $aDouble / $bDouble = $quotientDouble');

  // --- Módulo (%) — resto de la división ---
  final remainder = a % b;
  print('Modulo: $a % $b = $remainder (remainder of $a / $b)');

  // --- Ejemplo compuesto: los cinco en una expresión ---
  const x = 15;
  const y = 4;
  print(
      'Summary: ($x + $y)=${x + y}, ($x - $y)=${x - y}, ($x * $y)=${x * y}, ($x ~/ $y)=${x ~/ y}, ($x % $y)=${x % y}');
}

void main() {
  runBasicOperatorExamples();
}
