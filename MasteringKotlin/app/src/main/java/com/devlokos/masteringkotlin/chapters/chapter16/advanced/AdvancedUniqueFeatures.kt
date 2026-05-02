package com.devlokos.masteringkotlin.chapters.chapter16.advanced

/**
 * Capítulo 16 — Características Únicas del Lenguaje.
 * Nivel AVANZADO: Builder estilo DSL — API fluida para construir una lista de ítems.
 */
fun main() {
    runAdvancedUniqueFeatureExamples()
}

/** Builder estilo DSL: añadir ítems con una API fluida. */
class ItemBuilder {
    private val items = mutableListOf<String>()
    fun item(name: String) = apply { items.add(name) }
    fun build(): List<String> = items.toList()
}

/** Punto de entrada del DSL. */
fun buildItems(block: ItemBuilder.() -> Unit): List<String> {
    return ItemBuilder().apply(block).build()
}

fun runAdvancedUniqueFeatureExamples() {
    println("========================================")
    println("       DSL-STYLE BUILDER (Kotlin)")
    println("========================================")
    val list = buildItems {
        item("Apple")
        item("Banana")
        item("Cherry")
    }
    println("Built list: $list")
    println("========================================")
}
