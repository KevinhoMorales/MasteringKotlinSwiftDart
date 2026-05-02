package com.devlokos.masteringkotlin.chapters.chapter10.advanced

/**
 * Capítulo 10 — Null Safety.
 * Nivel AVANZADO: UserProfile con email y phone opcionales; impresión segura.
 */
fun main() {
    runAdvancedNullSafetyExamples()
}

/**
 * UserProfile: name obligatorio, email y phone opcionales.
 * Las funciones imprimen los datos de forma segura aunque los valores sean null.
 */
class UserProfile(val name: String, val email: String?, val phone: String?) {

    /** Imprime el perfil; usa texto por defecto para campos null. */
    fun printProfile() {
        println("--- Profile ---")
        println("Name:  $name")
        println("Email: ${email ?: "(not set)"}")
        println("Phone: ${phone ?: "(not set)"}")
    }

    /** Devuelve un resumen en una línea, manejando nulls de forma segura. */
    fun summary(): String {
        val emailPart = email?.let { "email=$it" } ?: "no email"
        val phonePart = phone?.let { "phone=$it" } ?: "no phone"
        return "$name ($emailPart, $phonePart)"
    }
}

fun runAdvancedNullSafetyExamples() {
    println("========================================")
    println("       USER PROFILE (NULL SAFETY)")
    println("========================================")

    val full = UserProfile("Alice", "alice@mail.com", "+1234567890")
    full.printProfile()
    println("Summary: ${full.summary()}")

    val partial = UserProfile("Bob", null, "+9876543210")
    partial.printProfile()
    println("Summary: ${partial.summary()}")

    val minimal = UserProfile("Charlie", null, null)
    minimal.printProfile()
    println("Summary: ${minimal.summary()}")

    println("========================================")
}
