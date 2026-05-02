package com.devlokos.masteringkotlin.chapters.chapter11.advanced

/**
 * Capítulo 11 — Genéricos.
 * Nivel AVANZADO: Stack genérico — push(), pop(), peek().
 */
fun main() {
    runAdvancedGenericsExamples()
}

/**
 * Stack genérico: LIFO. El parámetro de tipo T lo hace reutilizable para cualquier tipo.
 */
class Stack<T> {
    private val items = mutableListOf<T>()

    fun push(item: T) {
        items.add(item)
    }

    fun pop(): T? {
        return if (items.isEmpty()) null else items.removeAt(items.size - 1)
    }

    fun peek(): T? {
        return items.lastOrNull()
    }

    fun isEmpty(): Boolean = items.isEmpty()
    fun size(): Int = items.size
}

fun runAdvancedGenericsExamples() {
    println("========================================")
    println("       GENERIC STACK")
    println("========================================")

    val intStack = Stack<Int>()
    intStack.push(1)
    intStack.push(2)
    intStack.push(3)
    println("Stack size: ${intStack.size()}")
    println("Peek: ${intStack.peek()}")
    println("Pop: ${intStack.pop()}, ${intStack.pop()}, ${intStack.pop()}, ${intStack.pop()}")

    val stringStack = Stack<String>()
    stringStack.push("first")
    stringStack.push("second")
    println("Peek: ${stringStack.peek()}")
    println("Pop: ${stringStack.pop()}")
    println("========================================")
}
