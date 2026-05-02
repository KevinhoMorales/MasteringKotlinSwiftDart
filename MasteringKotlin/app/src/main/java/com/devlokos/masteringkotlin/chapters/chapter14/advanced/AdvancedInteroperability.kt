package com.devlokos.masteringkotlin.chapters.chapter14.advanced

import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import java.util.UUID

/**
 * Capítulo 14 — Interoperabilidad.
 * Nivel AVANZADO: PlatformUtility — API conceptual compartida (formatDate, formatCurrency, generateId).
 *
 * Esta es la implementación en Kotlin de utilidades que podrían compartirse o reflejarse
 * entre plataformas. Usa APIs de la plataforma Java (SimpleDateFormat, etc.) cuando convenga.
 */
fun main() {
    runAdvancedInteroperabilityExamples()
}

object PlatformUtility {

    fun formatDate(timestamp: Long): String {
        val sdf = SimpleDateFormat("yyyy-MM-dd", Locale.US)
        return sdf.format(Date(timestamp))
    }

    fun formatCurrency(amount: Double, currencyCode: String = "USD"): String {
        return String.format(Locale.US, "%s %.2f", currencyCode, amount)
    }

    fun generateId(): String = UUID.randomUUID().toString()
}

fun runAdvancedInteroperabilityExamples() {
    println("========================================")
    println("       PLATFORM UTILITY (Kotlin)")
    println("========================================")
    println("formatDate(0):     ${PlatformUtility.formatDate(0)}")
    println("formatCurrency:    ${PlatformUtility.formatCurrency(99.5)}")
    println("generateId():      ${PlatformUtility.generateId()}")
    println("========================================")
}
