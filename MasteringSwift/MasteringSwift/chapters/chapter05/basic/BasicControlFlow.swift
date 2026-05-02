//
//  BasicControlFlow.swift
//  MasteringSwift
//
//  Capítulo 05 — Flujo de control (if, when/switch, bucles).
//  Nivel BÁSICO: Ejemplos simples de if/else y condiciones.
//
//  Cubre: if/else, verificación positivo/negativo, verificación par/impar.
//

import Foundation

/// Ejecuta ejemplos básicos de flujo de control. Llamar desde un test o playground.
func runBasicControlFlowExamples() {
    // --- if / else: condición simple ---
    let temperature = 22
    if temperature > 25 {
        print("It's hot outside.")
    } else {
        print("It's not hot outside.")
    }

    // --- Verificar si un número es positivo o negativo ---
    let number = -7
    if number > 0 {
        print("\(number) is positive.")
    } else if number < 0 {
        print("\(number) is negative.")
    } else {
        print("\(number) is zero.")
    }

    // --- Verificar si un número es par o impar (usando módulo %) ---
    let value = 8
    if value % 2 == 0 {
        print("\(value) is even.")
    } else {
        print("\(value) is odd.")
    }

    // --- switch (Swift): mismo par/impar como expresión ---
    let n = 5
    let parity: String
    switch n % 2 {
    case 0:
        parity = "even"
    default:
        parity = "odd"
    }
    print("\(n) is \(parity) (using switch).")
}
