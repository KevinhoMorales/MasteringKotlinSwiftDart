//
//  BasicPerformance.swift
//  MasteringSwift
//
//  Capítulo 19 — Rendimiento y optimización.
//  Nivel BÁSICO: Eficiente vs ineficiente — bucle vs built-in, valores cacheados.
//

import Foundation

func runBasicPerformanceExamples() {
    let numbers = [1, 2, 3, 4, 5]

    var sumLoop = 0
    for n in numbers { sumLoop += n }
    print("Sum (loop): \(sumLoop)")

    let sumBuiltIn = numbers.reduce(0, +)
    print("Sum (built-in reduce): \(sumBuiltIn)")

    let list = (0..<100).map { $0 }
    let factor = 2
    var sumRepeated = 0
    for n in list { sumRepeated += n * factor }
    let doubled = list.map { $0 * factor }
    var sumCached = 0
    for n in doubled { sumCached += n }
    print("Sum repeated calc: \(sumRepeated), cached: \(sumCached)")
}
