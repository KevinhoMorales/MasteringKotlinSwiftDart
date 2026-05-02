//
//  BasicCollections.swift
//  MasteringSwift
//
//  Capítulo 07 — Colecciones.
//  Nivel BÁSICO: Listas e iteración.
//
//  Cubre: lista de números, lista de cadenas, iteración, imprimir cada elemento.
//

import Foundation

/// Ejecuta ejemplos básicos de colecciones. Llamar desde un test o playground.
func runBasicCollectionExamples() {
    // --- Crear una lista de números ---
    let numbers = [1, 2, 3, 4, 5]
    print("List of numbers: \(numbers)")

    // --- Crear una lista de cadenas ---
    let names = ["Alice", "Bob", "Charlie"]
    print("List of strings: \(names)")

    // --- Iterar por una lista e imprimir cada elemento ---
    print("Numbers: ", terminator: "")
    for n in numbers {
        print("\(n) ", terminator: "")
    }
    print("")

    print("Names: ", terminator: "")
    for name in names {
        print("\(name) ", terminator: "")
    }
    print("")

    // --- Acceder a elementos por índice ---
    print("First number: \(numbers[0]), last name: \(names[names.count - 1])")
}
