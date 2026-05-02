// ignore_for_file: avoid_print
//
//  basic_multiplatform.dart
//  MasteringDart
//
//  Capítulo 18 — Desarrollo multiplataforma.
//  Nivel BÁSICO: Utilidades compartidas — formateador de fecha, de moneda, ID aleatorio.
//  La misma API lógica podría estar en código Dart compartido usado por Flutter (móvil, web, escritorio).
//
//  Ejecutar con: dart run lib/chapters/chapter18/basic/basic_multiplatform.dart

import 'dart:math';

String formatDate(int timestamp) {
  final dt = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000, isUtc: true);
  final y = dt.year;
  final m = dt.month.toString().padLeft(2, '0');
  final d = dt.day.toString().padLeft(2, '0');
  return '$y-$m-$d';
}

String formatCurrency(double amount, [String code = 'USD']) {
  return '$code ${amount.toStringAsFixed(2)}';
}

String generateRandomId() {
  final r = Random();
  const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
  return List.generate(8, (_) => chars[r.nextInt(chars.length)]).join();
}

void runBasicMultiplatformExamples() {
  print('formatDate(0):       ${formatDate(0)}');
  print('formatCurrency:     ${formatCurrency(99.5)}');
  print('generateRandomId(): ${generateRandomId()}');
}

void main() {
  runBasicMultiplatformExamples();
}
