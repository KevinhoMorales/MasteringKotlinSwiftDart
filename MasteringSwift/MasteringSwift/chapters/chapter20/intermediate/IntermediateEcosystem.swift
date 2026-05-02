//
//  IntermediateEcosystem.swift
//  MasteringSwift
//
//  Capítulo 20 — Ecosistema y bibliotecas.
//  Nivel INTERMEDIO: DateUtils — ayudantes de fecha estilo biblioteca.
//

import Foundation

enum DateUtils {
    private static let formatter: DateFormatter = {
        let f = DateFormatter()
        f.dateFormat = "yyyy-MM-dd"
        f.locale = Locale(identifier: "en_US_POSIX")
        return f
    }()

    static func formatDate(timestamp: TimeInterval) -> String {
        formatter.string(from: Date(timeIntervalSince1970: timestamp))
    }

    static func daysBetween(from: Date, to: Date) -> Int {
        Calendar.current.dateComponents([.day], from: from, to: to).day ?? 0
    }
}

func runIntermediateEcosystemExamples() {
    print("DateUtils.formatDate(0): \(DateUtils.formatDate(timestamp: 0))")
    let from = Date(timeIntervalSince1970: 0)
    let to = Date(timeIntervalSince1970: 2 * 86400)
    print("DateUtils.daysBetween(0, 2 days): \(DateUtils.daysBetween(from: from, to: to))")
}
