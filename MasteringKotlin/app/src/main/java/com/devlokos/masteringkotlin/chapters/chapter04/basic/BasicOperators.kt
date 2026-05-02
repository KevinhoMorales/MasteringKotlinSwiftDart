package com.devlokos.masteringkotlin.chapters.chapter04.basic

/**
 * Capítulo 04 — Operadores y expresiones.
 * Nivel BÁSICO: Ejemplos simples con operadores aritméticos.
 *
 * Cubre: suma, resta, multiplicación, división, módulo.
 */
fun main() {
    runBasicOperatorExamples()
}

fun runBasicOperatorExamples() {
    val a = 20
    val b = 6

    // --- Suma (+) ---
    val sum = a + b
    println("Addition: $a + $b = $sum")

    // --- Resta (-) ---
    val difference = a - b
    println("Subtraction: $a - $b = $difference")

    // --- Multiplicación (*) ---
    val product = a * b
    println("Multiplication: $a * $b = $product")

    // --- División (/) — división entera cuando ambos operandos son Int ---
    val quotient = a / b
    println("Division (integer): $a / $b = $quotient")

    // --- División con Double para resultado fraccionario ---
    val aDouble = 20.0
    val bDouble = 6.0
    val quotientDouble = aDouble / bDouble
    println("Division (double): $aDouble / $bDouble = $quotientDouble")

    // --- Módulo (%) — resto de la división ---
    val remainder = a % b
    println("Modulo: $a % $b = $remainder (remainder of $a / $b)")

    // --- Ejemplo compuesto: los cinco en una expresión ---
    val x = 15
    val y = 4
    println("Summary: ($x + $y)=${x + y}, ($x - $y)=${x - y}, ($x * $y)=${x * y}, ($x / $y)=${x / y}, ($x % $y)=${x % y}")
}
