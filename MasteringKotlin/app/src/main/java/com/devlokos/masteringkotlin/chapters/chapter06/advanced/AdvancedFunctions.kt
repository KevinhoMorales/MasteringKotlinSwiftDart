package com.devlokos.masteringkotlin.chapters.chapter06.advanced

/**
 * Capítulo 06 — Funciones.
 * Nivel AVANZADO: Utilidad reutilizable con múltiples funciones.
 *
 * Incluye: calculadora simple (sumar/restar/multiplicar/dividir),
 * convertidor de temperatura (Celsius ↔ Fahrenheit), utilidades numéricas (par, primo).
 */
fun main() {
    runAdvancedFunctionExamples()
}

// --- Funciones de calculadora ---
fun add(a: Double, b: Double): Double = a + b
fun subtract(a: Double, b: Double): Double = a - b
fun multiplyDouble(a: Double, b: Double): Double = a * b
fun divide(a: Double, b: Double): Double = if (b != 0.0) a / b else Double.NaN

/// Aplica la operación dada a dos números y devuelve el resultado.
fun calculate(a: Double, b: Double, operation: String): Double {
    return when (operation) {
        "+" -> add(a, b)
        "-" -> subtract(a, b)
        "*" -> multiplyDouble(a, b)
        "/" -> divide(a, b)
        else -> Double.NaN
    }
}

// --- Convertidor de temperatura ---
fun celsiusToFahrenheit(celsius: Double): Double = celsius * 9.0 / 5.0 + 32.0
fun fahrenheitToCelsius(fahrenheit: Double): Double = (fahrenheit - 32.0) * 5.0 / 9.0

// --- Utilidades numéricas ---
fun isEven(n: Int): Boolean = n % 2 == 0
fun isPrime(n: Int): Boolean {
    if (n < 2) return false
    var i = 2
    while (i * i <= n) {
        if (n % i == 0) return false
        i++
    }
    return true
}

fun runAdvancedFunctionExamples() {
    println("========================================")
    println("       REUSABLE FUNCTION UTILITIES")
    println("========================================")

    // --- Calculadora simple usando funciones ---
    println("\n--- Calculator (10 and 4) ---")
    println("add(10, 4) = ${add(10.0, 4.0)}")
    println("subtract(10, 4) = ${subtract(10.0, 4.0)}")
    println("multiply(10, 4) = ${multiplyDouble(10.0, 4.0)}")
    println("divide(10, 4) = ${divide(10.0, 4.0)}")
    println("calculate(10, 4, \"+\") = ${calculate(10.0, 4.0, "+")}")

    // --- Convertidor de temperatura ---
    println("\n--- Temperature converter ---")
    val celsius = 25.0
    val fahrenheit = 77.0
    println("${celsius}°C = ${celsiusToFahrenheit(celsius)}°F")
    println("${fahrenheit}°F = ${fahrenheitToCelsius(fahrenheit)}°C")

    // --- Utilidades numéricas ---
    println("\n--- Number utilities ---")
    println("isEven(8) = ${isEven(8)}, isEven(7) = ${isEven(7)}")
    println("isPrime(7) = ${isPrime(7)}, isPrime(9) = ${isPrime(9)}")

    println("\n========================================")
}
