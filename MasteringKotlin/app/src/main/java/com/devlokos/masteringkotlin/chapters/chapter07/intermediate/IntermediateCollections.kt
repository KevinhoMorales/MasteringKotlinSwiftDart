package com.devlokos.masteringkotlin.chapters.chapter07.intermediate

/**
 * Capítulo 07 — Colecciones.
 * Nivel INTERMEDIO: filter, map, sort, min/max.
 *
 * Ejemplos: filtrar números pares, nombres a mayúsculas, ordenar números, max/min.
 */
fun main() {
    runIntermediateCollectionExamples()
}

fun runIntermediateCollectionExamples() {
    // --- Filtrar elementos: mantener solo números pares ---
    val numbers = listOf(1, 2, 3, 4, 5, 6)
    val evens = numbers.filter { it % 2 == 0 }
    println("Numbers: $numbers")
    println("Even numbers (filter): $evens")

    // --- Mapear valores: convertir nombres a mayúsculas ---
    val names = listOf("alice", "bob", "charlie")
    val upperNames = names.map { it.uppercase() }
    println("Names: $names")
    println("Uppercase (map): $upperNames")

    // --- Ordenar una lista ---
    val unsorted = listOf(3, 1, 4, 1, 5, 9, 2, 6)
    val sorted = unsorted.sorted()
    println("Unsorted: $unsorted")
    println("Sorted: $sorted")

    // --- Encontrar máximo y mínimo ---
    val values = listOf(10, 5, 20, 15, 8)
    val maxVal = values.maxOrNull() ?: 0
    val minVal = values.minOrNull() ?: 0
    println("Values: $values -> max=$maxVal, min=$minVal")

    // --- Set: elementos únicos ---
    val withDuplicates = listOf(1, 2, 2, 3, 3, 3)
    val uniqueSet = withDuplicates.toSet()
    println("With duplicates: $withDuplicates -> set: $uniqueSet")

    // --- Map: pares clave-valor ---
    val ages = mapOf("Alice" to 25, "Bob" to 30, "Charlie" to 25)
    println("Ages map: $ages")
    for ((name, age) in ages) {
        println("  $name is $age years old")
    }
}
