//
//  BasicOperators.swift
//  MasteringSwift
//
//  Capítulo 04 — Operadores y expresiones.
//  Nivel BÁSICO: Ejemplos simples con operadores aritméticos.
//
//  Cubre: suma, resta, multiplicación, división, módulo.
//

import Foundation

/// Ejecuta ejemplos básicos de operadores aritméticos. Llamar desde un test o playground.
func runBasicOperatorExamples() {
    let a = 20
    let b = 6

    // --- Suma (+) ---
    let sum = a + b
    print("Addition: \(a) + \(b) = \(sum)")

    // --- Resta (-) ---
    let difference = a - b
    print("Subtraction: \(a) - \(b) = \(difference)")

    // --- Multiplicación (*) ---
    let product = a * b
    print("Multiplication: \(a) * \(b) = \(product)")

    // --- División (/) — división entera cuando ambos operandos son Int ---
    let quotient = a / b
    print("Division (integer): \(a) / \(b) = \(quotient)")

    // --- División con Double para resultado fraccionario ---
    let aDouble = 20.0
    let bDouble = 6.0
    let quotientDouble = aDouble / bDouble
    print("Division (double): \(aDouble) / \(bDouble) = \(quotientDouble)")

    // --- Módulo (%) — resto de la división (Swift usa remainder para Int/Double) ---
    let remainder = a % b
    print("Modulo: \(a) % \(b) = \(remainder) (remainder of \(a) / \(b))")

    // --- Ejemplo compuesto: los cinco en una expresión ---
    let x = 15
    let y = 4
    print("Summary: (\(x) + \(y))=\(x + y), (\(x) - \(y))=\(x - y), (\(x) * \(y))=\(x * y), (\(x) / \(y))=\(x / y), (\(x) % \(y))=\(x % y)")
}
