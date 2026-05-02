// ignore_for_file: avoid_print
//
//  advanced_ecosystem.dart
//  MasteringDart
//
//  Capítulo 20 — Ecosistema y bibliotecas.
//  Nivel AVANZADO: AppToolkit — StringUtils, MathUtils, ValidationUtils.
//
//  Ejecutar con: dart run lib/chapters/chapter20/advanced/advanced_ecosystem.dart

import 'dart:math';

class StringUtils {
  static String capitalizeFirstLetter(String s) {
    if (s.isEmpty) return s;
    return s[0].toUpperCase() + s.substring(1);
  }
}

class MathUtils {
  static String formatCurrency(double amount, [String code = 'USD']) {
    return '$code ${amount.toStringAsFixed(2)}';
  }
}

class ValidationUtils {
  static bool validateEmail(String email) {
    return email.contains('@') && email.contains('.') && email.length >= 5;
  }
}

class AppToolkit {
  static String generateRandomId() {
    final r = Random();
    const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
    return List.generate(8, (_) => chars[r.nextInt(chars.length)]).join();
  }

  static bool validateEmail(String email) => ValidationUtils.validateEmail(email);
  static String formatCurrency(double amount, [String code = 'USD']) =>
      MathUtils.formatCurrency(amount, code);
}

void runAdvancedEcosystemExamples() {
  print('========================================');
  print('       APP TOOLKIT');
  print('========================================');
  print('validateEmail("a@b.co"): ${AppToolkit.validateEmail("a@b.co")}');
  print('generateRandomId(): ${AppToolkit.generateRandomId()}');
  print('formatCurrency(99.5): ${AppToolkit.formatCurrency(99.5)}');
  print('StringUtils.capitalizeFirstLetter("hello"): ${StringUtils.capitalizeFirstLetter("hello")}');
  print('========================================');
}

void main() {
  runAdvancedEcosystemExamples();
}
