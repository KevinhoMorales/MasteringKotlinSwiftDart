//
//  AdvancedInteroperability.swift
//  MasteringSwift
//
//  Capítulo 14 — Interoperabilidad.
//  Nivel AVANZADO: PlatformUtility — API conceptual compartida entre plataformas.
//
//  La misma API lógica (formatDate, formatCurrency, generateId) que Kotlin/Dart;
//  implementada con Foundation. Podría ser el lado Swift de lógica de negocio compartida.
//

import Foundation

enum PlatformUtility {

    static func formatDate(timestamp: TimeInterval) -> String {
        let date = Date(timeIntervalSince1970: timestamp)
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        formatter.locale = Locale(identifier: "en_US_POSIX")
        return formatter.string(from: date)
    }

    static func formatCurrency(amount: Double, currencyCode: String = "USD") -> String {
        return String(format: "%@ %.2f", currencyCode, amount)
    }

    static func generateId() -> String {
        return UUID().uuidString
    }
}

func runAdvancedInteroperabilityExamples() {
    print("========================================")
    print("       PLATFORM UTILITY (Swift)")
    print("========================================")
    print("formatDate(0):     \(PlatformUtility.formatDate(timestamp: 0))")
    print("formatCurrency:    \(PlatformUtility.formatCurrency(amount: 99.5))")
    print("generateId():      \(PlatformUtility.generateId())")
    print("========================================")
}
