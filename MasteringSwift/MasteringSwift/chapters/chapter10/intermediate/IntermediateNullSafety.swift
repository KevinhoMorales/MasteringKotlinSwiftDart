//
//  IntermediateNullSafety.swift
//  MasteringSwift
//
//  Capítulo 10 — Null Safety.
//  Nivel INTERMEDIO: Acceso seguro, optional binding, User con email opcional.
//

import Foundation

/// User con name obligatorio y email opcional.
fileprivate struct User {
    let name: String
    let email: String?
}

func runIntermediateNullSafetyExamples() {
    let userWithEmail = User(name: "Alice", email: "alice@example.com")
    let userWithoutEmail = User(name: "Bob", email: nil)

    // --- Imprimir email solo si existe (optional binding) ---
    if let email = userWithEmail.email {
        print("\(userWithEmail.name)'s email: \(email)")
    } else {
        print("\(userWithEmail.name) has no email")
    }

    if let email = userWithoutEmail.email {
        print("\(userWithoutEmail.name)'s email: \(email)")
    } else {
        print("\(userWithoutEmail.name) has no email")
    }

    // --- Optional chaining: acceso seguro ---
    if let length = userWithEmail.email?.count {
        print("Email length (safe): \(length)")
    }
    print("Email length (safe, nil): \(userWithoutEmail.email?.count ?? 0)")

    // --- Nil-coalescing: valor por defecto cuando nil ---
    let emailToShow = userWithoutEmail.email ?? "(not set)"
    print("Bob's email to show: \(emailToShow)")
}
