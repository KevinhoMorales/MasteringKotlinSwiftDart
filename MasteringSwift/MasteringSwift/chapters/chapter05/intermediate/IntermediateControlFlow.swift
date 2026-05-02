//
//  IntermediateControlFlow.swift
//  MasteringSwift
//
//  Capítulo 05 — Flujo de control (if, when/switch, bucles).
//  Nivel INTERMEDIO: Combina condiciones y bucles.
//
//  Ejemplos: clasificación por edad, recorrer lista, imprimir 1 a N, encontrar el mayor.
//

import Foundation

/// Ejecuta ejemplos intermedios de flujo de control. Llamar desde un test o playground.
func runIntermediateControlFlowExamples() {
    // --- Clasificación por edad (múltiples condiciones con switch) ---
    let age = 25
    let category: String
    switch age {
    case 0...12:
        category = "child"
    case 13...19:
        category = "teenager"
    case 20...64:
        category = "adult"
    default:
        category = "senior"
    }
    print("Age \(age): \(category)")

    // --- Recorrer una lista de números ---
    let numbers = [10, 20, 30, 40, 50]
    print("List elements: ", terminator: "")
    for num in numbers {
        print("\(num) ", terminator: "")
    }
    print("")

    // --- Imprimir números del 1 al N (bucle for) ---
    let n = 5
    print("Numbers 1 to \(n): ", terminator: "")
    for i in 1...n {
        print("\(i) ", terminator: "")
    }
    print("")

    // --- Encontrar el número más grande en una lista ---
    let values = [3, 7, 2, 9, 1, 5]
    var largest = values[0]
    for v in values {
        if v > largest {
            largest = v
        }
    }
    print("Largest in \(values) is \(largest)")

    // --- Bucle while: cuenta regresiva ---
    var count = 3
    print("Countdown: ", terminator: "")
    while count > 0 {
        print("\(count) ", terminator: "")
        count -= 1
    }
    print("Go!")
}
