package com.devlokos.masteringkotlin.chapters.chapter03.basic

/**
 * Capítulo 03 — Variables, constantes y tipos básicos.
 * Nivel BÁSICO: Ejemplos muy breves que muestran la sintaxis.
 *
 * Cubre: variables, constantes, inferencia de tipos, tipos numéricos,
 * booleanos, cadenas e interpolación de cadenas.
 */
fun main() {
    runBasicExamples()
}

fun runBasicExamples() {
    // --- Variables (mutables: 'var') ---
    var count = 0
    count = 5
    println("Variable count: $count")

    // --- Constantes (inmutables: 'val') ---
    val appName = "Mastering Kotlin"
    println("Constant appName: $appName")

    // --- Inferencia de tipos (el compilador infiere el tipo) ---
    val inferredInt = 42
    val inferredDouble = 3.14
    val inferredString = "hello"
    println("Inferred types: $inferredInt (Int), $inferredDouble (Double), $inferredString (String)")

    // --- Tipos explícitos ---
    val explicitAge: Int = 25
    val explicitPrice: Double = 9.99
    println("Explicit: age=$explicitAge, price=$explicitPrice")

    // --- Tipos numéricos básicos ---
    val byteValue: Byte = 127
    val shortValue: Short = 32_767
    val intValue: Int = 2_000_000
    val longValue: Long = 3_000_000_000L
    val floatValue: Float = 1.5f
    val doubleValue: Double = 2.71828
    println("Numeric types: byte=$byteValue, int=$intValue, long=$longValue, double=$doubleValue")

    // --- Valores booleanos ---
    val isActive = true
    val hasPermission = false
    println("Booleans: isActive=$isActive, hasPermission=$hasPermission")

    // --- Cadenas ---
    val greeting = "Hello, Kotlin!"
    val multiline = """
        Line one
        Line two
    """.trimIndent()
    println("String: $greeting")
    println("Multiline:\n$multiline")

    // --- Interpolación de cadenas ---
    val name = "Reader"
    val version = 1
    println("Interpolation: Hello, $name! Version $version.")
    println("Expression: 2 + 2 = ${2 + 2}")
}
