package com.devlokos.masteringkotlin.chapters.chapter14.intermediate

/**
 * Capítulo 14 — Interoperabilidad.
 * Nivel INTERMEDIO: Kotlin usando una clase de utilidades Java para integración con la plataforma.
 *
 * JavaDateFormatter está escrito en Java; Kotlin lo llama para usar APIs de la plataforma Java
 * (ej. SimpleDateFormat) sin reescribirlas en Kotlin.
 */
fun main() {
    runIntermediateInteroperabilityExamples()
}

fun runIntermediateInteroperabilityExamples() {
    // --- Kotlin llamando al formateador de fechas Java ---
    val now = JavaDateFormatter.formatNow()
    println("JavaDateFormatter.formatNow() = $now")

    val epoch = 0L
    val formatted = JavaDateFormatter.formatDate(epoch)
    println("JavaDateFormatter.formatDate(0) = $formatted")
}
