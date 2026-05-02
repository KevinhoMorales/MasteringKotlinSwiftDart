package com.devlokos.masteringkotlin.chapters.chapter05.basic

/**
 * Capítulo 05 — Flujo de control (if, when/switch, bucles).
 * Nivel BÁSICO: Ejemplos simples con if/else y condiciones.
 *
 * Cubre: if/else, comprobación positivo/negativo, par/impar.
 */
fun main() {
    runBasicControlFlowExamples()
}

fun runBasicControlFlowExamples() {
    // --- if / else: condición simple ---
    val temperature = 22
    if (temperature > 25) {
        println("It's hot outside.")
    } else {
        println("It's not hot outside.")
    }

    // --- Comprobar si un número es positivo o negativo ---
    val number = -7
    if (number > 0) {
        println("$number is positive.")
    } else if (number < 0) {
        println("$number is negative.")
    } else {
        println("$number is zero.")
    }

    // --- Comprobar si un número es par o impar (usando módulo %) ---
    val value = 8
    if (value % 2 == 0) {
        println("$value is even.")
    } else {
        println("$value is odd.")
    }

    // --- when (switch de Kotlin): mismo par/impar como expresión ---
    val n = 5
    val parity = when {
        n % 2 == 0 -> "even"
        else -> "odd"
    }
    println("$n is $parity (using when).")
}
