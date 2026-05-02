//
//  AdvancedCollections.swift
//  MasteringSwift
//
//  Capítulo 07 — Colecciones.
//  Nivel AVANZADO: Procesamiento de datos (calificaciones, productos).
//

import Foundation

/// Ejecuta ejemplos avanzados de colecciones. Llamar desde un test o playground.
func runAdvancedCollectionExamples() {
    // --- Sistema de calificaciones: diccionario de nombre a puntuación ---
    let grades: [String: Int] = [
        "Alice": 85,
        "Bob": 92,
        "Charlie": 78,
        "Diana": 95,
        "Eve": 88
    ]
    print("========================================")
    print("       STUDENT GRADES & PRODUCTS")
    print("========================================")
    print("\n--- Grades ---")
    print("Grades: \(grades)")

    let scores = Array(grades.values)
    let averageScore = Double(scores.reduce(0, +)) / Double(scores.count)
    print("Average score: \(averageScore)")

    let highScoreThreshold = 85
    let highScores = grades.filter { $0.value >= highScoreThreshold }
    print("Students with score >= \(highScoreThreshold): \(highScores)")

    // --- Lista de productos con precios: array de tuplas (nombre, precio) ---
    let products: [(String, Double)] = [
        ("Apple", 1.50),
        ("Banana", 0.80),
        ("Orange", 2.00),
        ("Milk", 3.20)
    ]
    print("\n--- Products ---")
    for (name, price) in products {
        print("  \(name): $\(price)")
    }
    let totalPrice = products.map { $0.1 }.reduce(0, +)
    let avgPrice = totalPrice / Double(products.count)
    print("Total price: $\(totalPrice)")
    print("Average price: $\(avgPrice)")

    // --- Filtrar productos caros (precio >= 2.0) ---
    let expensive = products.filter { $0.1 >= 2.0 }
    print("Products with price >= 2.0: \(expensive)")
    print("========================================")
}
