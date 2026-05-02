// ignore_for_file: avoid_print
//
//  basic_classes.dart
//  MasteringDart
//
//  Capítulo 08 — Clases y objetos.
//  Nivel BÁSICO: Clase simple con propiedades, constructor y creación de objetos.
//
//  Ejecutar con: dart run lib/chapters/chapter08/basic/basic_classes.dart

/// Clase User simple con dos propiedades: name y age.
/// El constructor usa this.name y this.age para asignación abreviada.
class User {
  final String name;
  final int age;

  User(this.name, this.age);
}

/// Ejecuta ejemplos básicos de clases.
void runBasicClassExamples() {
  // --- Crear objetos usando el constructor ---
  final user1 = User('Alice', 28);
  final user2 = User('Bob', 32);

  // --- Acceder a propiedades e imprimir ---
  print('User 1: ${user1.name}, ${user1.age} years old');
  print('User 2: ${user2.name}, ${user2.age} years old');

  // --- Imprimir el objeto ---
  print('user1 = $user1');
}

void main() {
  runBasicClassExamples();
}
