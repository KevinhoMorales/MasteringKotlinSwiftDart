package com.devlokos.masteringkotlin.chapters.chapter19.basic

/**
 * Capítulo 19 — Rendimiento y Optimización.
 * Nivel BÁSICO: Eficiente vs ineficiente — loop vs built-in, cálculo repetido vs cacheado.
 */
fun main() {
    runBasicPerformanceExamples()
}

fun runBasicPerformanceExamples() {
    val numbers = listOf(1, 2, 3, 4, 5)

    // --- Suma: loop manual (claro pero más código) ---
    var sumLoop = 0
    for (n in numbers) sumLoop += n
    println("Sum (loop): $sumLoop")

    // --- Suma: built-in (preferido — optimizado, menos código) ---
    val sumBuiltIn = numbers.sum()
    println("Sum (built-in): $sumBuiltIn")

    // --- Cálculo repetido vs cacheado: evitar recalcular dentro del loop ---
    val list = List(100) { it }
    val factor = 2
    var sumRepeated = 0
    for (n in list) sumRepeated += n * factor  // factor usado repetidamente está bien (está cacheado)
    var sumCached = 0
    val doubled = list.map { it * factor }  // calcular una vez
    for (n in doubled) sumCached += n
    println("Sum repeated calc: $sumRepeated, cached: $sumCached")
}
