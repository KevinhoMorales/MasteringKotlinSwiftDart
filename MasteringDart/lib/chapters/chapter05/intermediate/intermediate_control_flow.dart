// ignore_for_file: avoid_print
//
//  intermediate_control_flow.dart
import 'dart:io';
//  MasteringDart
//
//  Capítulo 05 — Flujo de control (if, when/switch, bucles).
//  Nivel INTERMEDIO: Combina condiciones y bucles.
//
//  Ejecutar con: dart run lib/chapters/chapter05/intermediate/intermediate_control_flow.dart

/// Ejecuta ejemplos intermedios de flujo de control.
void runIntermediateControlFlowExamples() {
  // --- Clasificación por edad (múltiples condiciones con switch) ---
  const age = 25;
  final category = switch (age) {
    >= 0 && <= 12 => 'child',
    >= 13 && <= 19 => 'teenager',
    >= 20 && <= 64 => 'adult',
    _ => 'senior',
  };
  print('Age $age: $category');

  // --- Recorrer una lista de números ---
  const numbers = [10, 20, 30, 40, 50];
  stdout.write('List elements: ');
  for (final num in numbers) {
    stdout.write('$num ');
  }
  print('');

  // --- Imprimir números del 1 al N (bucle for) ---
  const n = 5;
  stdout.write('Numbers 1 to $n: ');
  for (var i = 1; i <= n; i++) {
    stdout.write('$i ');
  }
  print('');

  // --- Encontrar el número más grande en una lista ---
  const values = [3, 7, 2, 9, 1, 5];
  var largest = values[0];
  for (final v in values) {
    if (v > largest) {
      largest = v;
    }
  }
  print('Largest in $values is $largest');

  // --- Bucle while: cuenta regresiva ---
  var count = 3;
  stdout.write('Countdown: ');
  while (count > 0) {
    stdout.write('$count ');
    count--;
  }
  print('Go!');
}

void main() {
  runIntermediateControlFlowExamples();
}
