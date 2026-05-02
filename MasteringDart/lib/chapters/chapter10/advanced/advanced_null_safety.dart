// ignore_for_file: avoid_print
//
//  advanced_null_safety.dart
//  MasteringDart
//
//  Capítulo 10 — Seguridad nula (Null Safety).
//  Nivel AVANZADO: UserProfile con email y teléfono opcionales; impresión segura.
//
//  Ejecutar con: dart run lib/chapters/chapter10/advanced/advanced_null_safety.dart

/// UserProfile: nombre obligatorio, email y teléfono opcionales.
class UserProfile {
  final String name;
  final String? email;
  final String? phone;

  UserProfile(this.name, this.email, this.phone);

  /// Imprime el perfil; usa texto por defecto para campos null.
  void printProfile() {
    print('--- Profile ---');
    print('Name:  $name');
    print('Email: ${email ?? '(not set)'}');
    print('Phone: ${phone ?? '(not set)'}');
  }

  /// Devuelve un resumen en una línea, manejando null de forma segura.
  String summary() {
    final emailPart = email != null ? 'email=$email' : 'no email';
    final phonePart = phone != null ? 'phone=$phone' : 'no phone';
    return '$name ($emailPart, $phonePart)';
  }
}

void runAdvancedNullSafetyExamples() {
  print('========================================');
  print('       USER PROFILE (NULL SAFETY)');
  print('========================================');

  final full = UserProfile('Alice', 'alice@mail.com', '+1234567890');
  full.printProfile();
  print('Summary: ${full.summary()}');

  final partial = UserProfile('Bob', null, '+9876543210');
  partial.printProfile();
  print('Summary: ${partial.summary()}');

  final minimal = UserProfile('Charlie', null, null);
  minimal.printProfile();
  print('Summary: ${minimal.summary()}');

  print('========================================');
}

void main() {
  runAdvancedNullSafetyExamples();
}
