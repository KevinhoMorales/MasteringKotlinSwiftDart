// ignore_for_file: avoid_print
//
//  advanced_unique_features.dart
//  MasteringDart
//
//  Capítulo 16 — Características únicas del lenguaje.
//  Nivel AVANZADO: Mixin — añadir comportamiento reutilizable a clases sin herencia.
//
//  Ejecutar con: dart run lib/chapters/chapter16/advanced/advanced_unique_features.dart

/// Mixin que añade una descripción imprimible y un timestamp a cualquier clase.
mixin Timestamped {
  DateTime get createdAt => DateTime.now();
  String get description => 'Created at $createdAt';
}

/// Mixin que añade comportamiento de validación.
mixin Validatable {
  bool validate() => true;
  void ensureValid() {
    if (!validate()) throw StateError('Validation failed');
  }
}

class Task with Timestamped, Validatable {
  final String name;
  Task(this.name);
  @override
  String get description => 'Task "$name" - $createdAt';
}

void runAdvancedUniqueFeatureExamples() {
  print('========================================');
  print('       MIXINS (Dart)');
  print('========================================');
  final task = Task('Learn Dart');
  print(task.description);
  task.ensureValid();
  print('Validation passed.');
  print('========================================');
}

void main() {
  runAdvancedUniqueFeatureExamples();
}
