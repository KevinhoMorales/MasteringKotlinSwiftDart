//
//  AdvancedCalculator.swift
//  MasteringSwift
//
//  Capítulo 04 — Operadores y expresiones.
//  Nivel AVANZADO: Un pequeño programa calculadora tipo consola.
//
//  Características: dos números, selección de operador (+ - * /), imprime el resultado.
//

import Foundation

/// Ejecuta el ejemplo de la calculadora. Llamar desde un test o playground.
func runCalculatorExample() {
    // --- Dos números (en una app real podrían leerse de la entrada del usuario) ---
    let num1 = 24.0
    let num2 = 8.0

    // --- Selección de operador: simulamos elegir +, -, *, / ---
    let operation = "/" // Cambiar a "+", "-", "*" o "/"

    // --- Calcular resultado con operadores aritméticos ---
    let result: Double
    switch operation {
    case "+":
        result = num1 + num2   // suma
    case "-":
        result = num1 - num2   // resta
    case "*":
        result = num1 * num2   // multiplicación
    case "/":
        result = num2 != 0 ? num1 / num2 : .nan   // división (evitar / 0)
    default:
        result = .nan
    }

    // --- Imprimir el resultado (estilo consola) ---
    print("========================================")
    print("           SIMPLE CALCULATOR")
    print("========================================")
    print("First number:  \(num1)")
    print("Operator:      \(operation)")
    print("Second number: \(num2)")
    print("----------------------------------------")
    if result.isNaN {
        print("Result: Invalid (e.g. division by zero or unknown operator)")
    } else {
        print("Result: \(num1) \(operation) \(num2) = \(result)")
    }
    print("========================================")

    // --- Ejecutar los cuatro operadores una vez para mostrar cada uno ---
    print("")
    print("All operations with \(num1) and \(num2):")
    print("  \(num1) + \(num2) = \(num1 + num2)")
    print("  \(num1) - \(num2) = \(num1 - num2)")
    print("  \(num1) * \(num2) = \(num1 * num2)")
    print("  \(num1) / \(num2) = \(num1 / num2)")
}
