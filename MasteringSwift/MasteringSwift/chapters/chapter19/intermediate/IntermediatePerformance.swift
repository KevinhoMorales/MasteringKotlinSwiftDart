//
//  IntermediatePerformance.swift
//  MasteringSwift
//
//  Capítulo 19 — Rendimiento y optimización.
//  Nivel INTERMEDIO: Encontrar máximo — un solo pase vs ordenar-y-último.
//

import Foundation

func runIntermediatePerformanceExamples() {
    let list = (0..<10_000).map { $0 }

    var max1 = Int.min
    for n in list { if n > max1 { max1 = n } }
    print("Max (single pass): \(max1)")

    let max2 = list.sorted().last!
    print("Max (sort then last): \(max2)")

    print("Max (built-in max): \(list.max()!)")
}
