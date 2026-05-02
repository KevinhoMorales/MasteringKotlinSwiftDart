// ignore_for_file: avoid_print
//
//  basic_inheritance.dart
//  MasteringDart
//
//  Capítulo 09 — Herencia y polimorfismo.
//  Nivel BÁSICO: Animal, Dog, Cat con makeSound().
//
//  Ejecutar con: dart run lib/chapters/chapter09/basic/basic_inheritance.dart

/// Clase base: Animal.
class Animal {
  final String name;
  Animal(this.name);
  void makeSound() {
    print('$name makes a sound.');
  }
}

/// Dog extiende Animal, sobrescribe makeSound().
class Dog extends Animal {
  Dog(super.name);
  @override
  void makeSound() {
    print('$name says: Woof!');
  }
}

/// Cat extiende Animal, sobrescribe makeSound().
class Cat extends Animal {
  Cat(super.name);
  @override
  void makeSound() {
    print('$name says: Meow!');
  }
}

void runBasicInheritanceExamples() {
  final dog = Dog('Rex');
  final cat = Cat('Whiskers');
  dog.makeSound();
  cat.makeSound();
}

void main() {
  runBasicInheritanceExamples();
}
