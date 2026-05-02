//
//  IntermediateErrorHandling.swift
//  MasteringSwift
//
//  Capítulo 12 — Manejo de errores.
//  Nivel INTERMEDIO: Error personalizado, validación de edad (throw si edad < 18).
//

import Foundation

/// Error personalizado para edad inválida.
enum InvalidAgeError: Error {
    case tooYoung(age: Int)
}

/// Valida la edad: lanza error si edad < 18.
func validateAge(_ age: Int) throws -> Int {
    guard age >= 18 else { throw InvalidAgeError.tooYoung(age: age) }
    return age
}

func runIntermediateErrorHandlingExamples() {
    // --- Edad válida ---
    do {
        let age = try validateAge(25)
        print("Valid age: \(age)")
    } catch InvalidAgeError.tooYoung(let age) {
        print("Error: Age must be at least 18, got \(age)")
    } catch {
        print("Unexpected error: \(error)")
    }

    // --- Edad inválida: capturar y mostrar ---
    do {
        try validateAge(15)
        print("Valid")
    } catch InvalidAgeError.tooYoung(let age) {
        print("Caught: Age must be at least 18, got \(age)")
    } catch {
        print("Unexpected error: \(error)")
    }

    // --- Múltiples validaciones ---
    for age in [20, 16, 18] {
        do {
            try validateAge(age)
            print("\(age): OK")
        } catch InvalidAgeError.tooYoung(let a) {
            print("\(age): Age must be at least 18, got \(a)")
        } catch {
            print("\(age): Unexpected error: \(error)")
        }
    }
}
