//
//  IntermediateFunctions.swift
//  MasteringSwift
//
//  Capítulo 06 — Funciones.
//  Nivel INTERMEDIO: Valores de retorno, múltiples parámetros, utilidades matemáticas simples.
//
//  Ejemplos: suma, multiplicación, área de un rectángulo.
//

import Foundation

/// Devuelve la suma de dos números.
func sum(a: Int, b: Int) -> Int {
    return a + b
}

/// Devuelve el producto de dos números.
func multiply(a: Int, b: Int) -> Int {
    return a * b
}

/// Devuelve el área de un rectángulo (ancho * alto).
func areaOfRectangle(width: Double, height: Double) -> Double {
    return width * height
}

/// Ejecuta ejemplos intermedios de funciones. Llamar desde un test o playground.
func runIntermediateFunctionExamples() {
    // --- Funciones que devuelven valores ---
    let total = sum(a: 10, b: 20)
    print("Sum of 10 and 20: \(total)")

    let product = multiply(a: 5, b: 6)
    print("Multiply 5 and 6: \(product)")

    // --- Función con múltiples parámetros ---
    let area = areaOfRectangle(width: 4, height: 5)
    print("Area of rectangle 4 x 5: \(area)")

    // --- Usar valores de retorno en expresiones ---
    print("sum(1, 2) + sum(3, 4) = \(sum(a: 1, b: 2) + sum(a: 3, b: 4))")
}
