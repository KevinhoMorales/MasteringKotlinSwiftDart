//
//  AdvancedErrorHandling.swift
//  MasteringSwift
//
//  Capítulo 12 — Manejo de errores.
//  Nivel AVANZADO: Validación UserRegistration — username, email, password.
//

import Foundation

/// Errores de registro.
enum RegistrationError: Error {
    case invalidUsername(String)
    case invalidEmail(String)
    case invalidPassword(String)
}

enum UserRegistration {
    static func validateUsername(_ username: String) throws {
        guard username.count >= 3 else {
            throw RegistrationError.invalidUsername("Username must be at least 3 characters: '\(username)'")
        }
    }

    static func validateEmail(_ email: String) throws {
        guard email.contains("@"), email.contains(".") else {
            throw RegistrationError.invalidEmail("Invalid email format: '\(email)'")
        }
    }

    static func validatePassword(_ password: String) throws {
        guard password.count >= 6 else {
            throw RegistrationError.invalidPassword("Password must be at least 6 characters")
        }
    }

    static func register(username: String, email: String, password: String) throws {
        try validateUsername(username)
        try validateEmail(email)
        try validatePassword(password)
        print("Registration successful: \(username)")
    }
}

func runAdvancedErrorHandlingExamples() {
    print("========================================")
    print("       USER REGISTRATION VALIDATION")
    print("========================================")

    // --- Registro válido ---
    do {
        try UserRegistration.register(username: "alice", email: "alice@mail.com", password: "secret123")
    } catch {
        print("Error: \(error)")
    }

    // --- Username inválido ---
    do {
        try UserRegistration.register(username: "ab", email: "bob@mail.com", password: "pass123")
    } catch RegistrationError.invalidUsername(let msg) {
        print("Username error: \(msg)")
    } catch {
        print("Error: \(error)")
    }

    // --- Email inválido ---
    do {
        try UserRegistration.register(username: "charlie", email: "invalid-email", password: "pass123")
    } catch RegistrationError.invalidEmail(let msg) {
        print("Email error: \(msg)")
    } catch {
        print("Error: \(error)")
    }

    // --- Password inválido ---
    do {
        try UserRegistration.register(username: "diana", email: "diana@mail.com", password: "123")
    } catch RegistrationError.invalidPassword(let msg) {
        print("Password error: \(msg)")
    } catch {
        print("Error: \(error)")
    }

    print("========================================")
}
