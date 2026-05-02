package com.devlokos.masteringkotlin.chapters.chapter10.basic

/**
 * Capítulo 10 — Null Safety.
 * Nivel BÁSICO: Variables nullable, comprobaciones de null, valores por defecto.
 *
 * Kotlin: los tipos nullable usan ? (ej. String?)
 */
fun main() {
    runBasicNullSafetyExamples()
}

fun runBasicNullSafetyExamples() {
    // --- String nullable: el tipo es String? (puede contener null) ---
    val name: String? = "Alice"
    val nickname: String? = null

    // --- Comprobar si el valor es null ---
    if (name != null) {
        println("Name length: ${name.length}")
    }
    if (nickname == null) {
        println("Nickname is null")
    }

    // --- Imprimir valores por defecto: operador Elvis ?: ---
    val displayName = name ?: "Unknown"
    val displayNick = nickname ?: "No nickname"
    println("Display name: $displayName")
    println("Display nick: $displayNick")

    // --- Safe call: ?. devuelve null en lugar de lanzar ---
    println("Name length (safe): ${name?.length}")
    println("Nickname length (safe): ${nickname?.length}")
}
