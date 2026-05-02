//
//  AdvancedNullSafety.swift
//  MasteringSwift
//
//  Capítulo 10 — Null Safety.
//  Nivel AVANZADO: UserProfile con email y teléfono opcionales; impresión segura.
//

import Foundation

/// UserProfile: name obligatorio, email y phone opcionales.
struct UserProfile {
    let name: String
    let email: String?
    let phone: String?

    /// Imprime el perfil; usa texto por defecto para campos nil.
    func printProfile() {
        print("--- Profile ---")
        print("Name:  \(name)")
        print("Email: \(email ?? "(not set)")")
        print("Phone: \(phone ?? "(not set)")")
    }

    /// Devuelve un resumen en una línea, manejando nil de forma segura.
    func summary() -> String {
        let emailPart = email.map { "email=\($0)" } ?? "no email"
        let phonePart = phone.map { "phone=\($0)" } ?? "no phone"
        return "\(name) (\(emailPart), \(phonePart))"
    }
}

func runAdvancedNullSafetyExamples() {
    print("========================================")
    print("       USER PROFILE (NULL SAFETY)")
    print("========================================")

    let full = UserProfile(name: "Alice", email: "alice@mail.com", phone: "+1234567890")
    full.printProfile()
    print("Summary: \(full.summary())")

    let partial = UserProfile(name: "Bob", email: nil, phone: "+9876543210")
    partial.printProfile()
    print("Summary: \(partial.summary())")

    let minimal = UserProfile(name: "Charlie", email: nil, phone: nil)
    minimal.printProfile()
    print("Summary: \(minimal.summary())")

    print("========================================")
}
