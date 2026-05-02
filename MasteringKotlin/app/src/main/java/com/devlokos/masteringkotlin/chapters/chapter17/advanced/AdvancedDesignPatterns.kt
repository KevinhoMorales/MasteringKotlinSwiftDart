package com.devlokos.masteringkotlin.chapters.chapter17.advanced

/**
 * Capítulo 17 — Patrones de Diseño.
 * Nivel AVANZADO: Observer — NewsPublisher notifica a suscriptores cuando se publican artículos.
 */
fun main() {
    runAdvancedDesignPatternExamples()
}

typealias Subscriber = (String) -> Unit

class NewsPublisher {
    private val subscribers = mutableListOf<Subscriber>()

    fun subscribe(handler: Subscriber) {
        subscribers.add(handler)
    }

    fun publish(article: String) {
        subscribers.forEach { it(article) }
    }
}

fun runAdvancedDesignPatternExamples() {
    println("========================================")
    println("       OBSERVER PATTERN")
    println("========================================")
    val publisher = NewsPublisher()
    publisher.subscribe { article -> println("  Subscriber A: $article") }
    publisher.subscribe { article -> println("  Subscriber B: $article") }
    publisher.publish("Hello World")
    publisher.publish("Breaking News")
    println("========================================")
}
