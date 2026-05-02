// ignore_for_file: avoid_print
//
//  intermediate_generics.dart
//  MasteringDart
//
//  Capítulo 11 — Genéricos.
//  Nivel INTERMEDIO: Funciones genéricas — imprimir lista, swap, maxOf.
//
//  Ejecutar con: dart run lib/chapters/chapter11/intermediate/intermediate_generics.dart

import 'dart:io';

/// Función genérica: imprime cada elemento de una lista (cualquier tipo T).
void printList<T>(List<T> list) {
  stdout.write('List: ');
  for (final item in list) {
    stdout.write('$item ');
  }
  print('');
}

/// Swap genérico: intercambia dos elementos.
void swap<T>(List<T> list, int i, int j) {
  final temp = list[i];
  list[i] = list[j];
  list[j] = temp;
}

/// Comparación genérica: devuelve el mayor de dos valores (restricción Comparable).
T maxOf<T extends Comparable<T>>(T a, T b) {
  return a.compareTo(b) >= 0 ? a : b;
}

void runIntermediateGenericsExamples() {
  printList<int>([1, 2, 3]);
  printList<String>(['A', 'B', 'C']);

  final list = [10, 20, 30];
  swap(list, 0, 2);
  print('After swap: $list');

  print('maxOf(5, 9) = ${maxOf(5, 9)}');
  print('maxOf("apple", "banana") = ${maxOf("apple", "banana")}');
}

void main() {
  runIntermediateGenericsExamples();
}
