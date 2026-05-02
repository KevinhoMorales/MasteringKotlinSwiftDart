package com.devlokos.masteringkotlin.chapters.chapter10.intermediate

/**
 * Capítulo 10 — Null Safety.
 * Nivel INTERMEDIO: Safe call, optional binding, User con email opcional.
 */
fun main() {
    runIntermediateNullSafetyExamples()
}

/** User con name obligatorio y email opcional. */
class User(val name: String, val email: String?)

fun runIntermediateNullSafetyExamples() {
    val userWithEmail = User("Alice", "alice@example.com")
    val userWithoutEmail = User("Bob", null)

    // --- Imprimir email solo si existe (comprobación de null) ---
    if (userWithEmail.email != null) {
        println("${userWithEmail.name}'s email: ${userWithEmail.email}")
    } else {
        println("${userWithEmail.name} has no email")
    }

    if (userWithoutEmail.email != null) {
        println("${userWithoutEmail.name}'s email: ${userWithoutEmail.email}")
    } else {
        println("${userWithoutEmail.name} has no email")
    }

    // --- Safe call: encadenar sin comprobación de null ---
    println("Email length (safe): ${userWithEmail.email?.length}")
    println("Email length (safe, null): ${userWithoutEmail.email?.length}")

    // --- Elvis: valor por defecto cuando es null ---
    val emailToShow = userWithoutEmail.email ?: "(not set)"
    println("Bob's email to show: $emailToShow")
}
