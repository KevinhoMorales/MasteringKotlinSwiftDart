package com.devlokos.masteringkotlin.chapters.chapter12.intermediate

/**
 * Capítulo 12 — Manejo de Errores.
 * Nivel INTERMEDIO: Error personalizado, validación de edad (throw si age < 18), catch y mostrar.
 */
fun main() {
    runIntermediateErrorHandlingExamples()
}

/** Excepción personalizada para edad inválida. */
class InvalidAgeException(message: String) : Exception(message)

/**
 * Valida la edad: lanza InvalidAgeException si age < 18.
 */
fun validateAge(age: Int): Int {
    if (age < 18) {
        throw InvalidAgeException("Age must be at least 18, got $age")
    }
    return age
}

fun runIntermediateErrorHandlingExamples() {
    // --- Edad válida: sin excepción ---
    try {
        val age = validateAge(25)
        println("Valid age: $age")
    } catch (e: InvalidAgeException) {
        println("Error: ${e.message}")
    }

    // --- Edad inválida: catch y mostrar ---
    try {
        validateAge(15)
        println("Valid")
    } catch (e: InvalidAgeException) {
        println("Caught: ${e.message}")
    }

    // --- Múltiples validaciones ---
    listOf(20, 16, 18).forEach { age ->
        try {
            validateAge(age)
            println("$age: OK")
        } catch (e: InvalidAgeException) {
            println("$age: ${e.message}")
        }
    }
}
