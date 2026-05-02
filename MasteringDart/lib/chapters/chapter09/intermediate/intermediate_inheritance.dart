// ignore_for_file: avoid_print
//
//  intermediate_inheritance.dart
//  MasteringDart
//
//  Capítulo 09 — Herencia y polimorfismo.
//  Nivel INTERMEDIO: Vehicle, Car, Bike; startEngine() sobrescrito.
//
//  Ejecutar con: dart run lib/chapters/chapter09/intermediate/intermediate_inheritance.dart

/// Clase base para vehículos.
class Vehicle {
  final String brand;
  Vehicle(this.brand);
  void startEngine() {
    print('$brand vehicle is starting...');
  }
}

/// Car sobrescribe startEngine().
class Car extends Vehicle {
  Car(super.brand);
  @override
  void startEngine() {
    print('$brand car: turning the key, engine running.');
  }
}

/// Bike sobrescribe startEngine().
class Bike extends Vehicle {
  Bike(super.brand);
  @override
  void startEngine() {
    print('$brand bike: kick-start, engine running.');
  }
}

void runIntermediateInheritanceExamples() {
  final car = Car('Toyota');
  final bike = Bike('Harley');
  car.startEngine();
  bike.startEngine();
}

void main() {
  runIntermediateInheritanceExamples();
}
