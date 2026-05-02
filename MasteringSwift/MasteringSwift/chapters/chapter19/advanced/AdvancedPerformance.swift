//
//  AdvancedPerformance.swift
//  MasteringSwift
//
//  Capítulo 19 — Rendimiento y optimización.
//  Nivel AVANZADO: Dos enfoques, medir tiempo de ejecución.
//

import Foundation

func runAdvancedPerformanceExamples() {
    let size = 50_000
    let list = (0..<size).map { $0 }

    let start1 = Date()
    let result1 = list.filter { $0 % 2 == 0 }.map { $0 * 2 }.reduce(0, +)
    let time1 = Date().timeIntervalSince(start1) * 1000
    print("Approach 1 (filter→map→reduce): result=\(result1), \(String(format: "%.2f", time1))ms")

    let start2 = Date()
    var result2 = 0
    for n in list {
        if n % 2 == 0 { result2 += n * 2 }
    }
    let time2 = Date().timeIntervalSince(start2) * 1000
    print("Approach 2 (single loop):       result=\(result2), \(String(format: "%.2f", time2))ms")

    print("Same result: \(result1 == result2)")
}
