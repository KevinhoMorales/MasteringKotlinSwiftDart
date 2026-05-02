package com.devlokos.masteringkotlin.chapters.chapter11.basic

/**
 * Capítulo 11 — Genéricos.
 * Nivel BÁSICO: Clase contenedora genérica Box<T> — almacenar e imprimir distintos tipos.
 */
fun main() {
    runBasicGenericsExamples()
}

/**
 * Contenedor genérico: T es el parámetro de tipo. La misma clase sirve para cualquier tipo.
 */
class Box<T>(private val value: T) {
    fun getValue(): T = value
    fun printValue() {
        println("Box contains: $value")
    }
}

fun runBasicGenericsExamples() {
    // --- Almacenar distintos tipos en la misma clase genérica ---
    val intBox = Box(42)
    val stringBox = Box("Hello")
    val doubleBox = Box(3.14)

    intBox.printValue()
    stringBox.printValue()
    doubleBox.printValue()

    // --- Type-safe: getValue() devuelve el tipo correcto ---
    val n: Int = intBox.getValue()
    val s: String = stringBox.getValue()
    println("Unwrapped: $n, $s")
}
