package com.devlokos.masteringkotlin.chapters.chapter07.basic

/**
 * Capítulo 07 — Colecciones.
 * Nivel BÁSICO: Listas e iteración.
 *
 * Cubre: lista de números, lista de cadenas, iterar, imprimir cada elemento.
 */
fun main() {
    runBasicCollectionExamples()
}

fun runBasicCollectionExamples() {
    // --- Crear una lista de números ---
    val numbers = listOf(1, 2, 3, 4, 5)
    println("List of numbers: $numbers")

    // --- Crear una lista de cadenas ---
    val names = listOf("Alice", "Bob", "Charlie")
    println("List of strings: $names")

    // --- Iterar por una lista e imprimir cada elemento ---
    print("Numbers: ")
    for (n in numbers) {
        print("$n ")
    }
    println()

    print("Names: ")
    for (name in names) {
        print("$name ")
    }
    println()

    // --- Acceder a elementos por índice ---
    println("First number: ${numbers[0]}, last name: ${names[names.size - 1]}")
}
