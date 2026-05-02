//
//  AdvancedInheritance.swift
//  MasteringSwift
//
//  Capítulo 09 — Herencia y polimorfismo.
//  Nivel AVANZADO: Employee, Manager, Developer; calculateSalary() — polimorfismo.
//

import Foundation

/// Clase base para empleados.
class Employee {
    let name: String
    let baseSalary: Double
    init(name: String, baseSalary: Double) {
        self.name = name
        self.baseSalary = baseSalary
    }
    func calculateSalary() -> Double { baseSalary }
}

/// Manager: salario = base + bonus.
class Manager: Employee {
    let bonus: Double
    init(name: String, baseSalary: Double, bonus: Double) {
        self.bonus = bonus
        super.init(name: name, baseSalary: baseSalary)
    }
    override func calculateSalary() -> Double { baseSalary + bonus }
}

/// Developer: salario = base + (horas * tarifa).
class Developer: Employee {
    let extraHours: Int
    let hourlyRate: Double
    init(name: String, baseSalary: Double, extraHours: Int, hourlyRate: Double) {
        self.extraHours = extraHours
        self.hourlyRate = hourlyRate
        super.init(name: name, baseSalary: baseSalary)
    }
    override func calculateSalary() -> Double { baseSalary + Double(extraHours) * hourlyRate }
}

func runAdvancedInheritanceExamples() {
    print("========================================")
    print("       POLYMORPHISM: EMPLOYEES")
    print("========================================")
    let employees: [Employee] = [
        Employee(name: "Alex", baseSalary: 3000),
        Manager(name: "Jordan", baseSalary: 5000, bonus: 1000),
        Developer(name: "Sam", baseSalary: 4000, extraHours: 10, hourlyRate: 50)
    ]
    for emp in employees {
        let salary = emp.calculateSalary()
        print("\(emp.name) (\(type(of: emp))): salary = $\(salary)")
    }
    print("========================================")
}
