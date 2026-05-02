//
//  IntermediateFunctional.swift
//  MasteringSwift
//
//  Capítulo 15 — Programación funcional.
//  Nivel INTERMEDIO: map, filter, reduce sobre arrays.
//

import Foundation

func runIntermediateFunctionalExamples() {
    let numbers = [1, 2, 3, 4, 5, 6]

    let doubled = numbers.map { $0 * 2 }
    print("map (double): \(doubled)")

    let evens = numbers.filter { $0 % 2 == 0 }
    print("filter (even): \(evens)")

    let sum = numbers.reduce(0) { $0 + $1 }
    print("reduce (sum): \(sum)")

    let result = numbers.map { $0 * 2 }.filter { $0 > 5 }.reduce(0, +)
    print("chain (double, filter >5, sum): \(result)")
}
