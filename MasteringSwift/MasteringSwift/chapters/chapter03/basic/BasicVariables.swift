//
//  BasicVariables.swift
//  MasteringSwift
//
//  Capítulo 03 — Variables, constantes y tipos básicos.
//  Nivel BÁSICO: Ejemplos muy breves que muestran la sintaxis.
//
//  Cubre: variables, constantes, inferencia de tipos, tipos numéricos,
//  booleanos, cadenas e interpolación de cadenas.
//

import Foundation

/// Ejecuta todos los ejemplos básicos de variables y tipos. Llamar desde un test o playground.
func runBasicExamples() {
    // --- Variables (mutables: 'var') ---
    var count = 0
    count = 5
    print("Variable count: \(count)")

    // --- Constantes (inmutables: 'let') ---
    let appName = "Mastering Swift"
    print("Constant appName: \(appName)")

    // --- Inferencia de tipos (el compilador infiere el tipo) ---
    let inferredInt = 42
    let inferredDouble = 3.14
    let inferredString = "hello"
    print("Inferred types: \(inferredInt) (Int), \(inferredDouble) (Double), \(inferredString) (String)")

    // --- Tipos explícitos ---
    let explicitAge: Int = 25
    let explicitPrice: Double = 9.99
    print("Explicit: age=\(explicitAge), price=\(explicitPrice)")

    // --- Tipos numéricos básicos ---
    let intValue: Int = 2_000_000
    let int8Value: Int8 = 127
    let int64Value: Int64 = 3_000_000_000
    let floatValue: Float = 1.5
    let doubleValue: Double = 2.71828
    print("Numeric types: Int8=\(int8Value), Int=\(intValue), Int64=\(int64Value), Double=\(doubleValue)")

    // --- Valores booleanos ---
    let isActive = true
    let hasPermission = false
    print("Booleans: isActive=\(isActive), hasPermission=\(hasPermission)")

    // --- Cadenas ---
    let greeting = "Hello, Swift!"
    let multiline = """
        Line one
        Line two
        """
    print("String: \(greeting)")
    print("Multiline:\n\(multiline)")

    // --- Interpolación de cadenas ---
    let name = "Reader"
    let version = 1
    print("Interpolation: Hello, \(name)! Version \(version).")
    print("Expression: 2 + 2 = \(2 + 2)")
}
