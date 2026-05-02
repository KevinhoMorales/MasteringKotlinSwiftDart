//
//  IntermediateGenerics.swift
//  MasteringSwift
//
//  Capítulo 11 — Genéricos.
//  Nivel INTERMEDIO: Funciones genéricas — imprimir lista, swap, maxOf.
//

import Foundation

/// Función genérica: imprime cada elemento de un array (cualquier tipo T).
func printList<T>(_ list: [T]) {
    print("List: ", terminator: "")
    for item in list {
        print("\(item) ", terminator: "")
    }
    print("")
}

/// Swap genérico: intercambia dos elementos.
func swap<T>(_ list: inout [T], _ i: Int, _ j: Int) {
    let temp = list[i]
    list[i] = list[j]
    list[j] = temp
}

/// Comparación genérica: devuelve el mayor de dos valores (restricción Comparable).
func maxOf<T: Comparable>(_ a: T, _ b: T) -> T {
    return a >= b ? a : b
}

func runIntermediateGenericsExamples() {
    printList([1, 2, 3])
    printList(["A", "B", "C"])

    var list = [10, 20, 30]
    swap(&list, 0, 2)
    print("After swap: \(list)")

    print("maxOf(5, 9) = \(maxOf(5, 9))")
    print("maxOf(\"apple\", \"banana\") = \(maxOf("apple", "banana"))")
}
