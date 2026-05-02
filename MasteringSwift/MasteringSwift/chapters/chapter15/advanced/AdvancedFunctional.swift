//
//  AdvancedFunctional.swift
//  MasteringSwift
//
//  Capítulo 15 — Programación funcional.
//  Nivel AVANZADO: StudentScoreSystem — map de puntuaciones, filter aprobados, reduce al promedio.
//

import Foundation

struct Student {
    let name: String
    let score: Int
}

func runAdvancedFunctionalExamples() {
    let students = [
        Student(name: "Alice", score: 85),
        Student(name: "Bob", score: 72),
        Student(name: "Charlie", score: 90),
        Student(name: "Diana", score: 58),
        Student(name: "Eve", score: 88)
    ]
    let passingThreshold = 60

    print("========================================")
    print("       STUDENT SCORE SYSTEM")
    print("========================================")
    print("Students: \(students)")
    print("Passing threshold: \(passingThreshold)")

    let scores = students.map(\.score)
    print("Scores (map): \(scores)")

    let passingScores = scores.filter { $0 >= passingThreshold }
    print("Passing scores (filter): \(passingScores)")

    let sum = passingScores.reduce(0, +)
    let average = passingScores.isEmpty ? 0.0 : Double(sum) / Double(passingScores.count)
    print("Average of passing: \(average)")

    let passingList = students.map(\.score).filter { $0 >= passingThreshold }
    let avgPassing = passingList.isEmpty ? 0.0 : Double(passingList.reduce(0, +)) / Double(passingList.count)
    print("Pipeline average (passing only): \(avgPassing)")
    print("========================================")
}
