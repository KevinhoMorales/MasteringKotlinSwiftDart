package com.devlokos.masteringkotlin.chapters.chapter05.intermediate

/**
 * Capítulo 05 — Flujo de control (if, when/switch, bucles).
 * Nivel INTERMEDIO: Combinar condiciones y bucles.
 *
 * Ejemplos: clasificación por edad, recorrer lista, imprimir 1 a N, encontrar el mayor.
 */
fun main() {
    runIntermediateControlFlowExamples()
}

fun runIntermediateControlFlowExamples() {
    // --- Clasificación por edad (múltiples condiciones con when) ---
    val age = 25
    val category = when (age) {
        in 0..12 -> "child"
        in 13..19 -> "teenager"
        in 20..64 -> "adult"
        else -> "senior"
    }
    println("Age $age: $category")

    // --- Recorrer una lista de números ---
    val numbers = listOf(10, 20, 30, 40, 50)
    print("List elements: ")
    for (num in numbers) {
        print("$num ")
    }
    println()

    // --- Imprimir números del 1 a N (bucle for) ---
    val n = 5
    print("Numbers 1 to $n: ")
    for (i in 1..n) {
        print("$i ")
    }
    println()

    // --- Encontrar el número más grande en una lista ---
    val values = listOf(3, 7, 2, 9, 1, 5)
    var largest = values[0]
    for (v in values) {
        if (v > largest) {
            largest = v
        }
    }
    println("Largest in $values is $largest")

    // --- Bucle while: cuenta regresiva ---
    var count = 3
    print("Countdown: ")
    while (count > 0) {
        print("$count ")
        count--
    }
    println("Go!")
}
