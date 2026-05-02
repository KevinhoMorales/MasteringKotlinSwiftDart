//
//  IntermediateOperators.swift
//  MasteringSwift
//
//  Capítulo 04 — Operadores y expresiones.
//  Nivel INTERMEDIO: Combinar comparaciones, operadores lógicos y condiciones.
//
//  Ejemplos: validación de edad, comparación de números, expresiones booleanas.
//

import Foundation

/// Ejecuta los ejemplos intermedios de operadores. Llamar desde un test o playground.
func runIntermediateOperatorExamples() {
    // --- Validación de edad (operadores de comparación: <, <=, >, >=, ==, !=) ---
    let age = 17
    let minAge = 18
    let maxAge = 120
    let isAdult = age >= minAge
    let isValidAge = age >= 0 && age <= maxAge
    print("Age: \(age) — isAdult (>= \(minAge)): \(isAdult), isValid (0...\(maxAge)): \(isValidAge)")

    let ageMessage = age >= minAge ? "Access granted." : "You must be \(minAge) or older."
    print(ageMessage)

    // --- Comparación de números ---
    let num1 = 10
    let num2 = 20
    print("Comparison: \(num1) == \(num2) -> \(num1 == num2), \(num1) < \(num2) -> \(num1 < num2), \(num1) != \(num2) -> \(num1 != num2)")

    // --- Operadores lógicos (&&, ||, !) ---
    let hasTicket = true
    let hasId = true
    let isBanned = false
    let canEnter = hasTicket && hasId && !isBanned
    print("Logical: hasTicket && hasId && !isBanned -> canEnter = \(canEnter)")

    let score = 85
    let passingScore = 60
    let bonusThreshold = 90
    let passed = score >= passingScore
    let gotBonus = score >= bonusThreshold
    let passedOrBonus = passed || gotBonus
    print("Score \(score): passed=\(passed), gotBonus=\(gotBonus), passedOrBonus=\(passedOrBonus)")

    // --- Expresiones booleanas con precedencia de operadores ---
    let temp = 25
    let isSunny = true
    let isWarmDay = temp > 20 && isSunny
    let isOkDay = temp >= 15 || isSunny
    print("temp=\(temp), isSunny=\(isSunny) -> isWarmDay=\(isWarmDay), isOkDay=\(isOkDay)")
}
