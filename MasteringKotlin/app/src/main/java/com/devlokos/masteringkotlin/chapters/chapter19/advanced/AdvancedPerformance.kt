package com.devlokos.masteringkotlin.chapters.chapter19.advanced

/**
 * Capítulo 19 — Rendimiento y Optimización.
 * Nivel AVANZADO: Procesar lista grande — dos enfoques, medir tiempo de ejecución.
 */
fun main() {
    runAdvancedPerformanceExamples()
}

fun runAdvancedPerformanceExamples() {
    val size = 50_000
    val list = List(size) { it }

    // --- Enfoque 1: múltiples pasadas (filter → map → sum) — crea colecciones intermedias ---
    val t1 = System.nanoTime()
    val result1 = list.filter { it % 2 == 0 }.map { it * 2 }.sum()
    val time1 = (System.nanoTime() - t1) / 1_000_000.0
    println("Approach 1 (filter→map→sum): result=$result1, ${time1}ms")

    // --- Enfoque 2: un solo paso — un loop, sin listas intermedias ---
    val t2 = System.nanoTime()
    var result2 = 0
    for (n in list) {
        if (n % 2 == 0) result2 += n * 2
    }
    val time2 = (System.nanoTime() - t2) / 1_000_000.0
    println("Approach 2 (single loop):    result=$result2, ${time2}ms")

    println("Same result: ${result1 == result2}")
}
