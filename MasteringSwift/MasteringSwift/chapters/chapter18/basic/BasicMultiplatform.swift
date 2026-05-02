//
//  BasicMultiplatform.swift
//  MasteringSwift
//
//  Capítulo 18 — Desarrollo multiplataforma.
//  Nivel BÁSICO: Utilidades compartidas — formateador de fecha, formateador de moneda, ID aleatorio.
//  La misma API lógica podría vivir en una capa compartida y usarse en iOS, macOS, etc.
//

import Foundation

func formatDate(timestamp: TimeInterval) -> String {
    let date = Date(timeIntervalSince1970: timestamp)
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd"
    formatter.locale = Locale(identifier: "en_US_POSIX")
    return formatter.string(from: date)
}

func formatCurrency(amount: Double, code: String = "USD") -> String {
    return String(format: "%@ %.2f", code, amount)
}

func generateRandomId() -> String {
    return String(UUID().uuidString.prefix(8))
}

func runBasicMultiplatformExamples() {
    print("formatDate(0):       \(formatDate(timestamp: 0))")
    print("formatCurrency:     \(formatCurrency(amount: 99.5))")
    print("generateRandomId(): \(generateRandomId())")
}
