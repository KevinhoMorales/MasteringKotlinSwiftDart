// ignore_for_file: avoid_print
//
//  intermediate_multiplatform.dart
//  MasteringDart
//
//  Capítulo 18 — Desarrollo multiplataforma.
//  Nivel INTERMEDIO: UserService — lógica de negocio compartida.
//
//  Ejecutar con: dart run lib/chapters/chapter18/intermediate/intermediate_multiplatform.dart

class User {
  final String name;
  final String email;
  final int age;
  const User({required this.name, required this.email, required this.age});
  @override
  String toString() => 'User($name, $email, $age)';
}

class UserService {
  static User createUser(String name, String email, int age) {
    return User(name: name, email: email, age: age);
  }

  static bool validateUser(User user) {
    return user.name.length >= 2 &&
        user.email.contains('@') &&
        user.age >= 1 &&
        user.age <= 120;
  }

  static String formatUserDisplay(User user) {
    return '${user.name} (${user.email}) - ${user.age} years';
  }
}

void runIntermediateMultiplatformExamples() {
  final user = UserService.createUser('Alice', 'alice@mail.com', 28);
  print('Created: $user');
  print('Valid: ${UserService.validateUser(user)}');
  print('Display: ${UserService.formatUserDisplay(user)}');
}

void main() {
  runIntermediateMultiplatformExamples();
}
