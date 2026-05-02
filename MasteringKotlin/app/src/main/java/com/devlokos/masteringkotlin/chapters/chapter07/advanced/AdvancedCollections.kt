package com.devlokos.masteringkotlin.chapters.chapter07.advanced

/**
 * Capítulo 07 — Colecciones.
 * Nivel AVANZADO: Procesamiento de datos con colecciones.
 *
 * Ejemplos: notas de estudiantes (promedio, filtrar notas altas), lista de productos con precios.
 */
fun main() {
    runAdvancedCollectionExamples()
}

fun runAdvancedCollectionExamples() {
    // --- Sistema de notas: map de nombre a puntuación ---
    val grades = mapOf(
        "Alice" to 85,
        "Bob" to 92,
        "Charlie" to 78,
        "Diana" to 95,
        "Eve" to 88
    )
    println("========================================")
    println("       STUDENT GRADES & PRODUCTS")
    println("========================================")
    println("\n--- Grades ---")
    println("Grades: $grades")

    val scores = grades.values
    val averageScore = scores.average()
    println("Average score: $averageScore")

    val highScoreThreshold = 85
    val highScores = grades.filter { it.value >= highScoreThreshold }
    println("Students with score >= $highScoreThreshold: $highScores")

    // --- Lista de productos con precios (lista de pares: nombre, precio) ---
    val products = listOf(
        "Apple" to 1.50,
        "Banana" to 0.80,
        "Orange" to 2.00,
        "Milk" to 3.20
    )
    println("\n--- Products ---")
    for ((name, price) in products) {
        println("  $name: \$$price")
    }
    val totalPrice = products.sumOf { it.second }
    val avgPrice = totalPrice / products.size
    println("Total price: \$$totalPrice")
    println("Average price: \$$avgPrice")

    // --- Filtrar productos caros (ej. precio >= 2.0) ---
    val expensive = products.filter { it.second >= 2.0 }
    println("Products with price >= 2.0: $expensive")
    println("========================================")
}
