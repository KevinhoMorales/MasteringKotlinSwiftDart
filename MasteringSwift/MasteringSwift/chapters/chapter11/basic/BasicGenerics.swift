//
//  BasicGenerics.swift
//  MasteringSwift
//
//  Capítulo 11 — Genéricos.
//  Nivel BÁSICO: Contenedor genérico Box<T> — almacenar e imprimir diferentes tipos.
//

import Foundation

/// Contenedor genérico: T es el parámetro de tipo. La misma struct funciona para cualquier tipo.
struct Box<T> {
    private let value: T
    init(_ value: T) { self.value = value }
    func getValue() -> T { value }
    func printValue() {
        print("Box contains: \(value)")
    }
}

func runBasicGenericsExamples() {
    let intBox = Box(42)
    let stringBox = Box("Hello")
    let doubleBox = Box(3.14)

    intBox.printValue()
    stringBox.printValue()
    doubleBox.printValue()

    let n: Int = intBox.getValue()
    let s: String = stringBox.getValue()
    print("Unwrapped: \(n), \(s)")
}
