// ignore_for_file: avoid_print
//
//  advanced_inheritance.dart
//  MasteringDart
//
//  Capítulo 09 — Herencia y polimorfismo.
//  Nivel AVANZADO: Employee, Manager, Developer; calculateSalary() — polimorfismo.
//
//  Ejecutar con: dart run lib/chapters/chapter09/advanced/advanced_inheritance.dart

/// Clase base para empleados.
class Employee {
  final String name;
  final double baseSalary;
  Employee(this.name, this.baseSalary);
  double calculateSalary() => baseSalary;
}

/// Manager: salario = base + bonus.
class Manager extends Employee {
  final double bonus;
  Manager(super.name, super.baseSalary, this.bonus);
  @override
  double calculateSalary() => baseSalary + bonus;
}

/// Developer: salario = base + (horas * tarifa).
class Developer extends Employee {
  final int extraHours;
  final double hourlyRate;
  Developer(super.name, super.baseSalary, this.extraHours, this.hourlyRate);
  @override
  double calculateSalary() => baseSalary + (extraHours * hourlyRate);
}

void runAdvancedInheritanceExamples() {
  print('========================================');
  print('       POLYMORPHISM: EMPLOYEES');
  print('========================================');
  final employees = <Employee>[
    Employee('Alex', 3000),
    Manager('Jordan', 5000, 1000),
    Developer('Sam', 4000, 10, 50),
  ];
  for (final emp in employees) {
    final salary = emp.calculateSalary();
    print('${emp.name} (${emp.runtimeType}): salary = \$$salary');
  }
  print('========================================');
}

void main() {
  runAdvancedInheritanceExamples();
}
