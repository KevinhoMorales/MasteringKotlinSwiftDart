// ignore_for_file: avoid_print
//
//  basic_collections.dart
//  MasteringDart
//
//  Capítulo 07 — Colecciones.
//  Nivel BÁSICO: Listas e iteración.
//
//  Ejecutar con: dart run lib/chapters/chapter07/basic/basic_collections.dart

import 'dart:io';

/// Ejecuta ejemplos básicos de colecciones.
void runBasicCollectionExamples() {
  // --- Crear una lista de números ---
  final numbers = [1, 2, 3, 4, 5];
  print('List of numbers: $numbers');

  // --- Crear una lista de cadenas ---
  final names = ['Alice', 'Bob', 'Charlie'];
  print('List of strings: $names');

  // --- Iterar por una lista e imprimir cada elemento ---
  stdout.write('Numbers: ');
  for (final n in numbers) {
    stdout.write('$n ');
  }
  print('');

  stdout.write('Names: ');
  for (final name in names) {
    stdout.write('$name ');
  }
  print('');

  // --- Acceder a elementos por índice ---
  print('First number: ${numbers[0]}, last name: ${names[names.length - 1]}');
}

void main() {
  runBasicCollectionExamples();
}
