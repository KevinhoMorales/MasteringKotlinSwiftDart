package com.devlokos.masteringkotlin.chapters.chapter13.intermediate

import kotlinx.coroutines.async
import kotlinx.coroutines.awaitAll
import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.delay
import kotlinx.coroutines.runBlocking

/**
 * Capítulo 13 — Concurrencia y Asincronía.
 * Nivel INTERMEDIO: async/await — obtener datos de usuario, simular API, await antes de imprimir.
 */
fun main() = runBlocking {
    runIntermediateConcurrencyExamples()
}

suspend fun fetchUser(): String {
    delay(100)
    return "User(Alice)"
}

suspend fun simulateApiRequest(): String {
    delay(150)
    return "API response: OK"
}

suspend fun runIntermediateConcurrencyExamples() = coroutineScope {
    // --- Esperar resultado antes de imprimir ---
    val user = fetchUser()
    println("Fetched: $user")

    val response = simulateApiRequest()
    println(response)

    // --- Ejecutar dos peticiones y esperar ambas ---
    val def1 = async { fetchUser() }
    val def2 = async { simulateApiRequest() }
    val results = awaitAll(def1, def2)
    println("Combined: ${results[0]}, ${results[1]}")
}
