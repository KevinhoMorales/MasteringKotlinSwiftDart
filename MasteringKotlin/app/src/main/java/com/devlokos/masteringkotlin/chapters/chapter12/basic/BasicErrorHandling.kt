package com.devlokos.masteringkotlin.chapters.chapter12.basic

/**
 * Capítulo 12 — Manejo de Errores.
 * Nivel BÁSICO: try/catch, división por cero, imprimir mensajes de error.
 */
fun main() {
    runBasicErrorHandlingExamples()
}

/**
 * División segura: devuelve a/b o null si b es cero (evita excepción).
 * También demuestra try/catch para división que podría lanzar.
 */
fun safeDivide(a: Double, b: Double): Double? {
    return if (b == 0.0) null else a / b
}

fun runBasicErrorHandlingExamples() {
    // --- try/catch: manejar división por cero (la división entera lanza) ---
    try {
        val result = 10 / 0
        println("Result: $result")
    } catch (e: ArithmeticException) {
        println("Error: ${e.message}")
    }

    // --- Usar safeDivide (sin excepción) ---
    println("safeDivide(10, 2) = ${safeDivide(10.0, 2.0)}")
    println("safeDivide(10, 0) = ${safeDivide(10.0, 0.0)}")

    // --- try/catch con throw explícito ---
    try {
        val x = 5.0
        val y = 0.0
        if (y == 0.0) throw ArithmeticException("Division by zero")
        println("x / y = ${x / y}")
    } catch (e: ArithmeticException) {
        println("Caught: ${e.message}")
    }
}
