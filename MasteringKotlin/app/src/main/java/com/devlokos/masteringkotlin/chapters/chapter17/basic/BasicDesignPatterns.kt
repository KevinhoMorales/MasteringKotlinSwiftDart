package com.devlokos.masteringkotlin.chapters.chapter17.basic

/**
 * Capítulo 17 — Patrones de Diseño.
 * Nivel BÁSICO: Singleton — una única instancia compartida (Kotlin: declaración object).
 */
fun main() {
    runBasicDesignPatternExamples()
}

/** Singleton: 'object' en Kotlin crea una única instancia. */
object AppConfig {
    val appName = "Mastering Kotlin"
    val version = "1.0"
}

fun runBasicDesignPatternExamples() {
    println("AppConfig.appName = ${AppConfig.appName}")
    println("AppConfig.version = ${AppConfig.version}")
    println("Same instance: ${AppConfig === AppConfig}")
}
