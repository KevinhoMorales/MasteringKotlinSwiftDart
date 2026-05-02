//
//  AdvancedEcosystem.swift
//  MasteringSwift
//
//  Capítulo 20 — Ecosistema y bibliotecas.
//  Nivel AVANZADO: AppToolkit — StringUtils, MathUtils, ValidationUtils.
//

import Foundation

fileprivate enum StringUtils {
    static func capitalizeFirstLetter(_ s: String) -> String {
        guard !s.isEmpty else { return s }
        return s.prefix(1).uppercased() + s.dropFirst()
    }
}

fileprivate enum MathUtils {
    static func formatCurrency(amount: Double, code: String = "USD") -> String {
        String(format: "%@ %.2f", code, amount)
    }
}

fileprivate enum ValidationUtils {
    static func validateEmail(_ email: String) -> Bool {
        email.contains("@") && email.contains(".") && email.count >= 5
    }
}

fileprivate enum AppToolkit {
    static func generateRandomId() -> String {
        String(UUID().uuidString.prefix(8))
    }
    static func validateEmail(_ email: String) -> Bool { ValidationUtils.validateEmail(email) }
    static func formatCurrency(amount: Double, code: String = "USD") -> String {
        MathUtils.formatCurrency(amount: amount, code: code)
    }
}

func runAdvancedEcosystemExamples() {
    print("========================================")
    print("       APP TOOLKIT")
    print("========================================")
    print("validateEmail(\"a@b.co\"): \(AppToolkit.validateEmail("a@b.co"))")
    print("generateRandomId(): \(AppToolkit.generateRandomId())")
    print("formatCurrency(99.5): \(AppToolkit.formatCurrency(amount: 99.5))")
    print("StringUtils.capitalizeFirstLetter(\"hello\"): \(StringUtils.capitalizeFirstLetter("hello"))")
    print("========================================")
}
