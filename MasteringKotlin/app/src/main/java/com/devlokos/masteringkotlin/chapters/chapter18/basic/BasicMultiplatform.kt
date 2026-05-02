package com.devlokos.masteringkotlin.chapters.chapter18.basic

import java.util.UUID
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

/**
 * Capítulo 18 — Desarrollo Multiplataforma.
 * Nivel BÁSICO: Utilidades compartidas — formateador de fechas, de moneda, ID aleatorio.
 * La misma API lógica podría implementarse en un módulo compartido (ej. KMP) y usarse en Android, iOS, etc.
 */
fun main() {
    runBasicMultiplatformExamples()
}

/** Formateador de fechas — lógica compartida para mostrar fechas de forma consistente entre plataformas. */
fun formatDate(timestamp: Long): String {
    val sdf = SimpleDateFormat("yyyy-MM-dd", Locale.US)
    return sdf.format(Date(timestamp))
}

/** Formateador de moneda — lógica compartida para mostrar dinero. */
fun formatCurrency(amount: Double, code: String = "USD"): String =
    String.format(Locale.US, "%s %.2f", code, amount)

/** Generador de ID aleatorio — lógica compartida para IDs únicos. */
fun generateRandomId(): String = UUID.randomUUID().toString().take(8)

fun runBasicMultiplatformExamples() {
    println("formatDate(0):       ${formatDate(0)}")
    println("formatCurrency:     ${formatCurrency(99.5)}")
    println("generateRandomId(): ${generateRandomId()}")
}
