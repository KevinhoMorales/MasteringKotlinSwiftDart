//
//  IntermediateUniqueFeatures.swift
//  MasteringSwift
//
//  Capítulo 16 — Características únicas del lenguaje.
//  Nivel INTERMEDIO: Property wrapper para validación — limita el valor a un rango.
//

import Foundation

/// Property wrapper que valida (clamps) un Int al rango min...max.
@propertyWrapper
struct Clamped {
    private var value: Int
    let range: ClosedRange<Int>
    var wrappedValue: Int {
        get { value }
        set { value = min(max(newValue, range.lowerBound), range.upperBound) }
    }
    init(wrappedValue: Int, _ range: ClosedRange<Int>) {
        self.range = range
        self.value = min(max(wrappedValue, range.lowerBound), range.upperBound)
    }
}

func runIntermediateUniqueFeatureExamples() {
    struct Settings {
        @Clamped(0...100) var score: Int = 0
    }
    var s = Settings()
    print("Initial: \(s.score)")
    s.score = 50
    print("Set 50: \(s.score)")
    s.score = 150  // limitado a 100
    print("Set 150 (clamped): \(s.score)")
    s.score = -10  // limitado a 0
    print("Set -10 (clamped): \(s.score)")
}
