//
//  IntermediateInheritance.swift
//  MasteringSwift
//
//  Capítulo 09 — Herencia y polimorfismo.
//  Nivel INTERMEDIO: Vehicle, Car, Bike; startEngine() sobrescrito.
//

import Foundation

/// Clase base para vehículos.
class Vehicle {
    let brand: String
    init(brand: String) { self.brand = brand }
    func startEngine() {
        print("\(brand) vehicle is starting...")
    }
}

/// Car sobrescribe startEngine().
class Car: Vehicle {
    override func startEngine() {
        print("\(brand) car: turning the key, engine running.")
    }
}

/// Bike sobrescribe startEngine().
class Bike: Vehicle {
    override func startEngine() {
        print("\(brand) bike: kick-start, engine running.")
    }
}

func runIntermediateInheritanceExamples() {
    let car = Car(brand: "Toyota")
    let bike = Bike(brand: "Harley")
    car.startEngine()
    bike.startEngine()
}
