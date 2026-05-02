// ignore_for_file: avoid_print
//
//  intermediate_design_patterns.dart
//  MasteringDart
//
//  Capítulo 17 — Patrones de diseño.
//  Nivel INTERMEDIO: Builder — construir User paso a paso con API fluida.
//
//  Ejecutar con: dart run lib/chapters/chapter17/intermediate/intermediate_design_patterns.dart

class User {
  final String name;
  final String email;
  final int age;
  const User({required this.name, required this.email, required this.age});
  @override
  String toString() => 'User($name, $email, $age)';
}

class UserBuilder {
  String _name = '';
  String _email = '';
  int _age = 0;

  UserBuilder name(String n) {
    _name = n;
    return this;
  }

  UserBuilder email(String e) {
    _email = e;
    return this;
  }

  UserBuilder age(int a) {
    _age = a;
    return this;
  }

  User build() => User(name: _name, email: _email, age: _age);
}

void runIntermediateDesignPatternExamples() {
  final user = UserBuilder()
      .name('Alice')
      .email('alice@mail.com')
      .age(28)
      .build();
  print('Built user: $user');
}

void main() {
  runIntermediateDesignPatternExamples();
}
