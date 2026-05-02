// ignore_for_file: avoid_print
//
//  basic_control_flow.dart
//  MasteringDart
//
//  Capítulo 05 — Flujo de control (if, when/switch, bucles).
//  Nivel BÁSICO: Ejemplos simples de if/else y condiciones.
//
//  Ejecutar con: dart run lib/chapters/chapter05/basic/basic_control_flow.dart

/// Ejecuta ejemplos básicos de flujo de control.
void runBasicControlFlowExamples() {
  // --- if / else: condición simple ---
  const temperature = 22;
  if (temperature > 25) {
    print("It's hot outside.");
  } else {
    print("It's not hot outside.");
  }

  // --- Verificar si un número es positivo o negativo ---
  const number = -7;
  if (number > 0) {
    print('$number is positive.');
  } else if (number < 0) {
    print('$number is negative.');
  } else {
    print('$number is zero.');
  }

  // --- Verificar si un número es par o impar (usando módulo %) ---
  const value = 8;
  if (value % 2 == 0) {
    print('$value is even.');
  } else {
    print('$value is odd.');
  }

  // --- switch: mismo par/impar como expresión ---
  const n = 5;
  final parity = switch (n % 2) {
    0 => 'even',
    _ => 'odd',
  };
  print('$n is $parity (using switch).');
}

void main() {
  runBasicControlFlowExamples();
}
