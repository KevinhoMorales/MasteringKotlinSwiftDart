//
//  IntermediateClasses.swift
//  MasteringSwift
//
//  Capítulo 08 — Clases y objetos.
//  Nivel INTERMEDIO: Clases con métodos (Product, Car).
//

import Foundation

/// Clase Product con name y price. Método para calcular precio con descuento.
fileprivate class Product {
    let name: String
    let price: Double

    init(name: String, price: Double) {
        self.name = name
        self.price = price
    }

    /// Devuelve el precio después de aplicar un porcentaje de descuento (ej. 0.2 = 20% de descuento).
    func priceAfterDiscount(discountPercent: Double) -> Double {
        return price * (1 - discountPercent)
    }
}

/// Clase de ejemplo con brand y model. Tiene método start(). (Nombre único para evitar choque con `Car` del capítulo de herencia.)
fileprivate class BasicCar {
    let brand: String
    let model: String

    init(brand: String, model: String) {
        self.brand = brand
        self.model = model
    }

    func start() {
        print("\(brand) \(model) is starting...")
    }
}

/// Ejecuta ejemplos intermedios de clases. Llamar desde un test o playground.
func runIntermediateClassExamples() {
    let product = Product(name: "Laptop", price: 999.99)
    print("Product: \(product.name), price: $\(product.price)")
    let discounted = product.priceAfterDiscount(discountPercent: 0.15)
    print("Price after 15% discount: $\(discounted)")

    let car = BasicCar(brand: "Toyota", model: "Camry")
    print("Car: \(car.brand) \(car.model)")
    car.start()
}
