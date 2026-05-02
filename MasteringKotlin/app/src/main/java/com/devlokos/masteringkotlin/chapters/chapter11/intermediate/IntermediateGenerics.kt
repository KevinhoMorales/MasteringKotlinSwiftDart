package com.devlokos.masteringkotlin.chapters.chapter11.intermediate

/**
 * Capítulo 11 — Genéricos.
 * Nivel INTERMEDIO: Funciones genéricas — imprimir lista, swap, compare.
 */
fun main() {
    runIntermediateGenericsExamples()
}

/** Función genérica: imprimir cada elemento de una lista (cualquier tipo T). */
fun <T> printList(list: List<T>) {
    print("List: ")
    for (item in list) {
        print("$item ")
    }
    println()
}

/** Swap genérico: intercambiar dos elementos (lista mutable). */
fun <T> swap(list: MutableList<T>, i: Int, j: Int) {
    val temp = list[i]
    list[i] = list[j]
    list[j] = temp
}

/** Compare genérico: devolver el mayor de dos valores (restricción Comparable). */
fun <T : Comparable<T>> maxOf(a: T, b: T): T {
    return if (a >= b) a else b
}

fun runIntermediateGenericsExamples() {
    printList(listOf(1, 2, 3))
    printList(listOf("A", "B", "C"))

    val list = mutableListOf(10, 20, 30)
    swap(list, 0, 2)
    println("After swap: $list")

    println("maxOf(5, 9) = ${maxOf(5, 9)}")
    println("maxOf(\"apple\", \"banana\") = ${maxOf("apple", "banana")}")
}
