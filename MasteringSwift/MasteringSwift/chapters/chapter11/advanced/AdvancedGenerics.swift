//
//  AdvancedGenerics.swift
//  MasteringSwift
//
//  Capítulo 11 — Genéricos.
//  Nivel AVANZADO: Stack genérico — push(), pop(), peek().
//

import Foundation

/// Stack genérico: LIFO. El parámetro de tipo T lo hace reutilizable para cualquier tipo.
struct Stack<T> {
    private var items: [T] = []

    mutating func push(_ item: T) {
        items.append(item)
    }

    mutating func pop() -> T? {
        return items.isEmpty ? nil : items.removeLast()
    }

    func peek() -> T? {
        return items.last
    }

    var isEmpty: Bool { items.isEmpty }
    var size: Int { items.count }
}

func runAdvancedGenericsExamples() {
    print("========================================")
    print("       GENERIC STACK")
    print("========================================")

    var intStack = Stack<Int>()
    intStack.push(1)
    intStack.push(2)
    intStack.push(3)
    print("Stack size: \(intStack.size)")
    print("Peek: \(intStack.peek() ?? 0)")
    print("Pop: \(intStack.pop() ?? 0), \(intStack.pop() ?? 0), \(intStack.pop() ?? 0), \(intStack.pop() ?? 0)")

    var stringStack = Stack<String>()
    stringStack.push("first")
    stringStack.push("second")
    print("Peek: \(stringStack.peek() ?? "")")
    print("Pop: \(stringStack.pop() ?? "")")
    print("========================================")
}
