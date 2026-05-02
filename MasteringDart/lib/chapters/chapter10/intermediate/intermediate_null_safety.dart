// ignore_for_file: avoid_print
//
//  intermediate_null_safety.dart
//  MasteringDart
//
//  Capítulo 10 — Seguridad nula (Null Safety).
//  Nivel INTERMEDIO: Safe call, optional binding, User con email opcional.
//
//  Ejecutar con: dart run lib/chapters/chapter10/intermediate/intermediate_null_safety.dart

/// Usuario con nombre obligatorio y email opcional.
class User {
  final String name;
  final String? email;
  User(this.name, this.email);
}

void runIntermediateNullSafetyExamples() {
  final userWithEmail = User('Alice', 'alice@example.com');
  final userWithoutEmail = User('Bob', null);

  // --- Imprimir email solo si existe (comprobación null) ---
  if (userWithEmail.email != null) {
    print("${userWithEmail.name}'s email: ${userWithEmail.email}");
  } else {
    print("${userWithEmail.name} has no email");
  }

  if (userWithoutEmail.email != null) {
    print("${userWithoutEmail.name}'s email: ${userWithoutEmail.email}");
  } else {
    print("${userWithoutEmail.name} has no email");
  }

  // --- Safe call: ?. ---
  print('Email length (safe): ${userWithEmail.email?.length}');
  print('Email length (safe, null): ${userWithoutEmail.email?.length}');

  // --- Valor por defecto cuando es null: ?? ---
  final emailToShow = userWithoutEmail.email ?? '(not set)';
  print("Bob's email to show: $emailToShow");
}

void main() {
  runIntermediateNullSafetyExamples();
}
