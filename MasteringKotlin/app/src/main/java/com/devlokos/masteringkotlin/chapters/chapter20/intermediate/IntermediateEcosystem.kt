package com.devlokos.masteringkotlin.chapters.chapter20.intermediate

import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import java.util.concurrent.TimeUnit

/**
 * Capítulo 20 — Ecosistema y Bibliotecas.
 * Nivel INTERMEDIO: DateUtils — ayudantes de fecha estilo biblioteca.
 */
fun main() {
    runIntermediateEcosystemExamples()
}

object DateUtils {
    private val formatter = SimpleDateFormat("yyyy-MM-dd", Locale.US)

    fun formatDate(timestamp: Long): String = formatter.format(Date(timestamp))

    fun daysBetween(fromMs: Long, toMs: Long): Long =
        TimeUnit.MILLISECONDS.toDays(toMs - fromMs)
}

fun runIntermediateEcosystemExamples() {
    println("DateUtils.formatDate(0): ${DateUtils.formatDate(0)}")
    val day = 86_400_000L  // 1 day in ms
    println("DateUtils.daysBetween(0, 2*day): ${DateUtils.daysBetween(0, 2 * day)}")
}
