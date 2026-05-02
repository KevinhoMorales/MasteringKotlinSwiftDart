package com.devlokos.masteringkotlin.chapters.chapter19.intermediate

/**
 * Capítulo 19 — Rendimiento y Optimización.
 * Nivel INTERMEDIO: Encontrar máximo — un solo paso (eficiente) vs ordenar-y-último (menos eficiente).
 */
fun main() {
    runIntermediatePerformanceExamples()
}

fun runIntermediatePerformanceExamples() {
    val list = List(10_000) { it }  // 0..9999

    // --- Eficiente: un solo paso O(n) ---
    var max1 = Int.MIN_VALUE
    for (n in list) if (n > max1) max1 = n
    println("Max (single pass): $max1")

    // --- Menos eficiente: ordenar y tomar último O(n log n) ---
    val max2 = list.sorted().last()
    println("Max (sort then last): $max2")

    // --- Built-in es eficiente (un solo paso): ---
    println("Max (built-in maxOrNull): ${list.maxOrNull()}")
}
