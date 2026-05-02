package com.devlokos.masteringkotlin.chapters.chapter20.basic

/**
 * Capítulo 20 — Ecosistema y Bibliotecas.
 * Nivel BÁSICO: StringUtils — módulo de utilidades simple (organización estilo biblioteca).
 */
fun main() {
    runBasicEcosystemExamples()
}

object StringUtils {
    fun capitalizeFirstLetter(s: String): String =
        if (s.isEmpty()) s else s.replaceFirstChar { it.uppercase() }

    fun reverseString(s: String): String = s.reversed()
}

fun runBasicEcosystemExamples() {
    println("StringUtils.capitalizeFirstLetter(\"hello\"): ${StringUtils.capitalizeFirstLetter("hello")}")
    println("StringUtils.reverseString(\"world\"): ${StringUtils.reverseString("world")}")
}
