//
//  AdvancedFunctions.swift
//  MasteringSwift
//
//  Capítulo 06 — Funciones.
//  Nivel AVANZADO: Utilidad reutilizable con múltiples funciones.
//
//  Incluye: calculadora, convertidor de temperatura, utilidades numéricas (par, primo).
//

import Foundation

// --- Funciones de calculadora ---
func add(a: Double, b: Double) -> Double { a + b }
func subtract(a: Double, b: Double) -> Double { a - b }
func multiplyDouble(a: Double, b: Double) -> Double { a * b }
func divide(a: Double, b: Double) -> Double {
    b != 0 ? a / b : .nan
}

/// Aplica la operación dada a dos números y devuelve el resultado.
func calculate(a: Double, b: Double, operation: String) -> Double {
    switch operation {
    case "+": return add(a: a, b: b)
    case "-": return subtract(a: a, b: b)
    case "*": return multiplyDouble(a: a, b: b)
    case "/": return divide(a: a, b: b)
    default: return .nan
    }
}

// --- Convertidor de temperatura ---
func celsiusToFahrenheit(celsius: Double) -> Double {
    celsius * 9 / 5 + 32
}
func fahrenheitToCelsius(fahrenheit: Double) -> Double {
    (fahrenheit - 32) * 5 / 9
}

// --- Utilidades numéricas ---
func isEven(n: Int) -> Bool { n % 2 == 0 }
func isPrime(n: Int) -> Bool {
    if n < 2 { return false }
    var i = 2
    while i * i <= n {
        if n % i == 0 { return false }
        i += 1
    }
    return true
}

/// Ejecuta ejemplos avanzados de funciones. Llamar desde un test o playground.
func runAdvancedFunctionExamples() {
    print("========================================")
    print("       REUSABLE FUNCTION UTILITIES")
    print("========================================")

    // --- Calculadora simple usando funciones ---
    print("\n--- Calculator (10 and 4) ---")
    print("add(10, 4) = \(add(a: 10, b: 4))")
    print("subtract(10, 4) = \(subtract(a: 10, b: 4))")
    print("multiply(10, 4) = \(multiplyDouble(a: 10, b: 4))")
    print("divide(10, 4) = \(divide(a: 10, b: 4))")
    print("calculate(10, 4, \"+\") = \(calculate(a: 10, b: 4, operation: "+"))")

    // --- Convertidor de temperatura ---
    print("\n--- Temperature converter ---")
    let celsius = 25.0
    let fahrenheit = 77.0
    print("\(celsius)°C = \(celsiusToFahrenheit(celsius: celsius))°F")
    print("\(fahrenheit)°F = \(fahrenheitToCelsius(fahrenheit: fahrenheit))°C")

    // --- Utilidades numéricas ---
    print("\n--- Number utilities ---")
    print("isEven(8) = \(isEven(n: 8)), isEven(7) = \(isEven(n: 7))")
    print("isPrime(7) = \(isPrime(n: 7)), isPrime(9) = \(isPrime(n: 9))")

    print("\n========================================")
}
