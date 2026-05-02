package com.devlokos.masteringkotlin.chapters.chapter16.intermediate

import kotlin.reflect.KProperty

/**
 * Capítulo 16 — Características Únicas del Lenguaje.
 * Nivel INTERMEDIO: Delegación para logging — delegado personalizado que registra get/set.
 */
fun main() {
    runIntermediateUniqueFeatureExamples()
}

class LoggingDelegate<T>(private var value: T, private val name: String) {
    operator fun getValue(thisRef: Any?, property: KProperty<*>): T {
        println("  [LOG] get $name = $value")
        return value
    }
    operator fun setValue(thisRef: Any?, property: KProperty<*>, v: T) {
        println("  [LOG] set $name: $value -> $v")
        value = v
    }
}

fun runIntermediateUniqueFeatureExamples() {
    var count by LoggingDelegate(0, "count")
    println("Initial read: $count")
    count = 5
    println("After set: $count")
}
