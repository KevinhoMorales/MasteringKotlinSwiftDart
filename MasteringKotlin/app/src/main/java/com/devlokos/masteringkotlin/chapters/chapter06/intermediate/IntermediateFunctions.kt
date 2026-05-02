package com.devlokos.masteringkotlin.chapters.chapter06.intermediate

/**
 * Capítulo 06 — Funciones.
 * Nivel INTERMEDIO: Valores de retorno, múltiples parámetros, utilidades matemáticas simples.
 *
 * Ejemplos: suma, multiplicación, área de un rectángulo.
 */
fun main() {
    runIntermediateFunctionExamples()
}

/// Devuelve la suma de dos números.
fun sum(a: Int, b: Int): Int {
    return a + b
}

/// Devuelve el producto de dos números.
fun multiply(a: Int, b: Int): Int {
    return a * b
}

/// Devuelve el área de un rectángulo (ancho * alto).
fun areaOfRectangle(width: Double, height: Double): Double {
    return width * height
}

fun runIntermediateFunctionExamples() {
    // --- Funciones que devuelven valores ---
    val total = sum(10, 20)
    println("Sum of 10 and 20: $total")

    val product = multiply(5, 6)
    println("Multiply 5 and 6: $product")

    // --- Función con múltiples parámetros ---
    val area = areaOfRectangle(4.0, 5.0)
    println("Area of rectangle 4 x 5: $area")

    // --- Usar valores de retorno en expresiones ---
    println("sum(1, 2) + sum(3, 4) = ${sum(1, 2) + sum(3, 4)}")
}
