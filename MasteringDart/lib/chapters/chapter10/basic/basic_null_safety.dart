// ignore_for_file: avoid_print
//
//  basic_null_safety.dart
//  MasteringDart
//
//  Capítulo 10 — Seguridad nula (Null Safety).
//  Nivel BÁSICO: Variables nullable, comprobaciones null, valores por defecto.
//
//  Dart: los tipos nullable usan ? (ej. String?); null es el valor.
//
//  Ejecutar con: dart run lib/chapters/chapter10/basic/basic_null_safety.dart

void runBasicNullSafetyExamples() {
  // --- String nullable: tipo String? (puede contener null) ---
  String? name = 'Alice';
  String? nickname = null;

  // --- Comprobar si el valor es null ---
  if (name != null) {
    print('Name length: ${name.length}');
  }
  if (nickname == null) {
    print('Nickname is null');
  }

  // --- Valores por defecto: operador ?? ---
  final displayName = name ?? 'Unknown';
  final displayNick = nickname ?? 'No nickname';
  print('Display name: $displayName');
  print('Display nick: $displayNick');

  // --- Acceso seguro: ?. devuelve null en lugar de lanzar ---
  print('Name length (safe): ${name?.length}');
  print('Nickname length (safe): ${nickname?.length}');
}

void main() {
  runBasicNullSafetyExamples();
}
