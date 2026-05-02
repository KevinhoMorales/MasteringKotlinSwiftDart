package com.devlokos.masteringkotlin.chapters.chapter15.basic

/**
 * Capítulo 15 — Programación Funcional.
 * Nivel BÁSICO: Funciones puras — mismo input siempre da mismo output; sin efectos secundarios.
 */
fun main() {
    runBasicFunctionalExamples()
}

/** Función pura: duplica un número. Sin efectos secundarios, sin estado mutable. */
fun double(n: Int): Int = n * 2

/** Función pura: devuelve el cuadrado de un número. */
fun square(n: Int): Int = n * n

/** Función pura: formatea un string con un prefijo. */
fun formatWithPrefix(s: String, prefix: String): String = "$prefix$s"

fun runBasicFunctionalExamples() {
    println("double(5) = ${double(5)}")
    println("square(4) = ${square(4)}")
    println("formatWithPrefix(\"world\", \"Hello, \") = ${formatWithPrefix("world", "Hello, ")}")
}
