//
//  IntermediateCollections.swift
//  MasteringSwift
//
//  Capítulo 07 — Colecciones.
//  Nivel INTERMEDIO: filter, map, sort, min/max.
//

import Foundation

/// Ejecuta ejemplos intermedios de colecciones. Llamar desde un test o playground.
func runIntermediateCollectionExamples() {
    // --- Filtrar elementos: mantener solo números pares ---
    let numbers = [1, 2, 3, 4, 5, 6]
    let evens = numbers.filter { $0 % 2 == 0 }
    print("Numbers: \(numbers)")
    print("Even numbers (filter): \(evens)")

    // --- Mapear valores: convertir nombres a mayúsculas ---
    let names = ["alice", "bob", "charlie"]
    let upperNames = names.map { $0.uppercased() }
    print("Names: \(names)")
    print("Uppercase (map): \(upperNames)")

    // --- Ordenar una lista ---
    let unsorted = [3, 1, 4, 1, 5, 9, 2, 6]
    let sorted = unsorted.sorted()
    print("Unsorted: \(unsorted)")
    print("Sorted: \(sorted)")

    // --- Encontrar máximo y mínimo ---
    let values = [10, 5, 20, 15, 8]
    let maxVal = values.max() ?? 0
    let minVal = values.min() ?? 0
    print("Values: \(values) -> max=\(maxVal), min=\(minVal)")

    // --- Set: elementos únicos ---
    let withDuplicates = [1, 2, 2, 3, 3, 3]
    let uniqueSet = Set(withDuplicates)
    print("With duplicates: \(withDuplicates) -> set: \(uniqueSet)")

    // --- Map (Dictionary): pares clave-valor ---
    let ages: [String: Int] = ["Alice": 25, "Bob": 30, "Charlie": 25]
    print("Ages map: \(ages)")
    for (name, age) in ages {
        print("  \(name) is \(age) years old")
    }
}
