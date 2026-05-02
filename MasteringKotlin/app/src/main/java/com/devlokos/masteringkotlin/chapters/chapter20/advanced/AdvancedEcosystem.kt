package com.devlokos.masteringkotlin.chapters.chapter20.advanced

import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import java.util.UUID

/**
 * Capítulo 20 — Ecosistema y Bibliotecas.
 * Nivel AVANZADO: AppToolkit — módulos reutilizables (StringUtils, MathUtils, ValidationUtils).
 */
fun main() {
    runAdvancedEcosystemExamples()
}

object StringUtils {
    fun capitalizeFirstLetter(s: String): String =
        if (s.isEmpty()) s else s.replaceFirstChar { it.uppercase() }
}

object MathUtils {
    fun formatCurrency(amount: Double, code: String = "USD"): String =
        String.format(Locale.US, "%s %.2f", code, amount)
}

object ValidationUtils {
    fun validateEmail(email: String): Boolean =
        email.contains("@") && email.contains(".") && email.length >= 5
}

object AppToolkit {
    fun generateRandomId(): String = UUID.randomUUID().toString().take(8)
    fun validateEmail(email: String): Boolean = ValidationUtils.validateEmail(email)
    fun formatCurrency(amount: Double, code: String = "USD"): String = MathUtils.formatCurrency(amount, code)
}

fun runAdvancedEcosystemExamples() {
    println("========================================")
    println("       APP TOOLKIT")
    println("========================================")
    println("validateEmail(\"a@b.co\"): ${AppToolkit.validateEmail("a@b.co")}")
    println("generateRandomId(): ${AppToolkit.generateRandomId()}")
    println("formatCurrency(99.5): ${AppToolkit.formatCurrency(99.5)}")
    println("StringUtils.capitalizeFirstLetter(\"hello\"): ${StringUtils.capitalizeFirstLetter("hello")}")
    println("========================================")
}
