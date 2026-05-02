package com.devlokos.masteringkotlin.chapters.chapter13.basic

import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import kotlinx.coroutines.runBlocking

/**
 * Capítulo 13 — Concurrencia y Asincronía.
 * Nivel BÁSICO: Ejecución retardada, simular petición de red (Kotlin Coroutines).
 */
fun main() = runBlocking {
    runBasicConcurrencyExamples()
}

suspend fun runBasicConcurrencyExamples() = coroutineScope {
    // --- Imprimir mensaje tras delay ---
    println("Before delay")
    delay(100)
    println("After delay (100ms)")

    // --- Simular petición de red con delay ---
    launch {
        println("Request started...")
        delay(200)
        println("Request completed (simulated 200ms)")
    }
    delay(50)
    println("Main continues while request runs in background")
    delay(250)
}
