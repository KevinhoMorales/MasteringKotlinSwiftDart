package com.devlokos.masteringkotlin.chapters.chapter15.intermediate

/**
 * Capítulo 15 — Programación Funcional.
 * Nivel INTERMEDIO: map, filter, reduce sobre listas.
 */
fun main() {
    runIntermediateFunctionalExamples()
}

fun runIntermediateFunctionalExamples() {
    val numbers = listOf(1, 2, 3, 4, 5, 6)

    // --- map: transformar cada elemento ---
    val doubled = numbers.map { it * 2 }
    println("map (double): $doubled")

    // --- filter: mantener solo elementos que cumplan una condición ---
    val evens = numbers.filter { it % 2 == 0 }
    println("filter (even): $evens")

    // --- reduce: combinar todos los elementos en un solo valor ---
    val sum = numbers.reduce { acc, n -> acc + n }
    println("reduce (sum): $sum")

    // --- Encadenamiento: map luego filter luego reduce ---
    val result = numbers.map { it * 2 }.filter { it > 5 }.reduce { a, b -> a + b }
    println("chain (double, filter >5, sum): $result")
}
