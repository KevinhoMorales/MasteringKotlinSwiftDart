// ignore_for_file: avoid_print
//
//  advanced_interoperability.dart
//  MasteringDart
//
//  Capítulo 14 — Interoperabilidad.
//  Nivel AVANZADO: PlatformUtility — API conceptual compartida entre plataformas.
//
//  Misma API lógica (formatDate, formatCurrency, generateId) que Kotlin/Swift;
//  podría ser el lado Dart de lógica de negocio compartida o una API de plugin Flutter.
//
//  Ejecutar con: dart run lib/chapters/chapter14/advanced/advanced_interoperability.dart

import 'dart:math';

class PlatformUtility {
  static String formatDate(int timestamp) {
    final dt = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000, isUtc: true);
    final y = dt.year;
    final m = dt.month.toString().padLeft(2, '0');
    final d = dt.day.toString().padLeft(2, '0');
    return '$y-$m-$d';
  }

  static String formatCurrency(double amount, [String currencyCode = 'USD']) {
    return '$currencyCode ${amount.toStringAsFixed(2)}';
  }

  static String generateId() {
    final r = Random();
    const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
    return List.generate(36, (_) => chars[r.nextInt(chars.length)]).join();
  }
}

void runAdvancedInteroperabilityExamples() {
  print('========================================');
  print('       PLATFORM UTILITY (Dart)');
  print('========================================');
  print('formatDate(0):     ${PlatformUtility.formatDate(0)}');
  print('formatCurrency:    ${PlatformUtility.formatCurrency(99.5)}');
  print('generateId():      ${PlatformUtility.generateId()}');
  print('========================================');
}

void main() {
  runAdvancedInteroperabilityExamples();
}
