//
//  IntermediateVariables.swift
//  MasteringSwift
//
//  Capítulo 03 — Variables, constantes y tipos básicos.
//  Nivel INTERMEDIO: Combinar variables con condiciones o funciones.
//
//  Muestra variables y constantes usadas dentro de condicionales
//  y funciones simples.
//

import Foundation

/// Ejecuta los ejemplos intermedios. Llamar desde un test o playground.
func runIntermediateExamples() {
    // --- Variables usadas en condiciones ---
    let score = 85
    let passingGrade = 60
    let passed = score >= passingGrade
    print("Score: \(score), Passed: \(passed)")

    let message = passed ? "Congratulations!" : "Keep trying."
    print(message)

    // --- Constantes en parámetros de función ---
    let price = 99.99
    let quantity = 3
    let total = calculateTotal(price: price, quantity: quantity)
    print("Total for \(quantity) items at $\(price) each: $\(total)")

    // --- Resultado con inferencia de tipos usado en condición ---
    let temperature = 22.5
    let unit = "Celsius"
    let description = describeTemperature(value: temperature, unit: unit)
    print(description)

    // --- Lógica booleana con variables ---
    let hasSubscription = true
    let isTrialActive = false
    let canAccessPremium = hasSubscription || isTrialActive
    print("Can access premium: \(canAccessPremium)")

    // --- Construcción de cadena con interpolación en la lógica ---
    let userName = "Alex"
    let loginCount = 7
    let welcomeText: String
    if loginCount > 5 {
        welcomeText = "Welcome back, \(userName)! You're a frequent user."
    } else {
        welcomeText = "Welcome, \(userName)!"
    }
    print(welcomeText)
}

/// Devuelve el precio total (precio * cantidad).
func calculateTotal(price: Double, quantity: Int) -> Double {
    return price * Double(quantity)
}

/// Devuelve una descripción de la temperatura.
func describeTemperature(value: Double, unit: String) -> String {
    let feeling: String
    if value < 0 {
        feeling = "freezing"
    } else if value < 15 {
        feeling = "cold"
    } else if value < 25 {
        feeling = "pleasant"
    } else {
        feeling = "hot"
    }
    return "Temperature: \(value)° \(unit) — \(feeling)"
}
