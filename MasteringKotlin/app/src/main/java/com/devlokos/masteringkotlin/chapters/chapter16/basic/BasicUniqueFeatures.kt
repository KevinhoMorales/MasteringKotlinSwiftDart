package com.devlokos.masteringkotlin.chapters.chapter16.basic

import kotlin.properties.Delegates
import kotlin.properties.ReadOnlyProperty
import kotlin.reflect.KProperty

/**
 * Capítulo 16 — Características Únicas del Lenguaje.
 * Nivel BÁSICO: Propiedades delegadas en Kotlin — lazy y delegado personalizado.
 */
fun main() {
    runBasicUniqueFeatureExamples()
}

fun runBasicUniqueFeatureExamples() {
    // --- lazy: el valor se calcula solo en el primer acceso ---
    val lazyValue: String by lazy {
        println("  (lazy: computing once)")
        "Computed"
    }
    println("First access: $lazyValue")
    println("Second access: $lazyValue")

    // --- observable: delegado que se ejecuta cuando el valor cambia ---
    var observed by Delegates.observable(0) { _, old, new ->
        println("  (observable: $old -> $new)")
    }
    observed = 1
    observed = 2

    // --- Delegado personalizado: string en mayúsculas ---
    class UppercaseDelegate(private var value: String) {
        operator fun getValue(thisRef: Any?, property: KProperty<*>): String = value.uppercase()
        operator fun setValue(thisRef: Any?, property: KProperty<*>, v: String) { value = v }
    }
    var title by UppercaseDelegate("hello")
    println("UppercaseDelegate: $title")
    title = "world"
    println("After set: $title")
}
