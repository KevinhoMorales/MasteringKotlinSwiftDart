package com.devlokos.masteringkotlin.chapters.chapter04.advanced

/**
 * Capítulo 04 — Operadores y expresiones.
 * Nivel AVANZADO: Un pequeño programa calculadora tipo consola.
 *
 * Características: dos números, selección de operador (+ - * /), imprime el resultado.
 * Demuestra conceptos aritméticos y de asignación.
 */
fun main() {
    runCalculatorExample()
}

fun runCalculatorExample() {
    // --- Dos números (en una app real podrían leerse de la entrada del usuario) ---
    val num1 = 24.0
    val num2 = 8.0

    // --- Selección de operador: simulamos elegir +, -, *, / ---
    val operation = "/" // Change to "+", "-", "*", or "/"

    // --- Calcular resultado con operadores aritméticos ---
    val result = when (operation) {
        "+" -> num1 + num2   // suma
        "-" -> num1 - num2   // resta
        "*" -> num1 * num2   // multiplicación
        "/" -> if (num2 != 0.0) num1 / num2 else Double.NaN  // división (evitar / 0)
        else -> Double.NaN
    }

    // --- Imprimir el resultado (estilo consola) ---
    println("========================================")
    println("           SIMPLE CALCULATOR")
    println("========================================")
    println("First number:  $num1")
    println("Operator:      $operation")
    println("Second number: $num2")
    println("----------------------------------------")
    if (result.isNaN()) {
        println("Result: Invalid (e.g. division by zero or unknown operator)")
    } else {
        println("Result: $num1 $operation $num2 = $result")
    }
    println("========================================")

    // --- Ejecutar los cuatro operadores una vez para mostrar cada uno ---
    println()
    println("All operations with $num1 and $num2:")
    println("  $num1 + $num2 = ${num1 + num2}")
    println("  $num1 - $num2 = ${num1 - num2}")
    println("  $num1 * $num2 = ${num1 * num2}")
    println("  $num1 / $num2 = ${num1 / num2}")
}
