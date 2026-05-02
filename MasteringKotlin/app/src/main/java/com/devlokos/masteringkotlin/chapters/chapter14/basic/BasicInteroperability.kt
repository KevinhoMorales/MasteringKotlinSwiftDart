package com.devlokos.masteringkotlin.chapters.chapter14.basic

/**
 * Capítulo 14 — Interoperabilidad.
 * Nivel BÁSICO: Kotlin llamando a una clase de utilidades Java.
 *
 * Kotlin y Java interoperan sin problemas en el mismo proyecto.
 * Kotlin llama a métodos Java directamente; no se necesitan wrappers.
 */
fun main() {
    runBasicInteroperabilityExamples()
}

fun runBasicInteroperabilityExamples() {
    // --- Kotlin usando una clase de utilidades Java ---
    val upper = JavaStringUtils.toUpperCase("hello")
    println("JavaStringUtils.toUpperCase(\"hello\") = $upper")

    val cap = JavaStringUtils.capitalize("world")
    println("JavaStringUtils.capitalize(\"world\") = $cap")
}
