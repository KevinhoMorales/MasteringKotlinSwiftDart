//
//  BasicClasses.swift
//  MasteringSwift
//
//  Capítulo 08 — Clases y objetos.
//  Nivel BÁSICO: Clase simple con propiedades, inicializador y creación de objetos.
//

import Foundation

/// Clase User simple con dos propiedades: name y age.
fileprivate class User {
    let name: String
    let age: Int

    /// Inicializador designado (constructor).
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

/// Ejecuta ejemplos básicos de clases. Llamar desde un test o playground.
func runBasicClassExamples() {
    // --- Crear objetos usando el inicializador ---
    let user1 = User(name: "Alice", age: 28)
    let user2 = User(name: "Bob", age: 32)

    // --- Acceder a propiedades e imprimir ---
    print("User 1: \(user1.name), \(user1.age) years old")
    print("User 2: \(user2.name), \(user2.age) years old")

    // --- Imprimir el objeto ---
    print("user1 = \(user1)")
}
