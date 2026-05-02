//
//  BasicErrorHandling.swift
//  MasteringSwift
//
//  Capítulo 12 — Manejo de errores.
//  Nivel BÁSICO: try/catch (do/catch), división por cero, imprimir mensajes de error.
//

import Foundation

/// Errores que pueden ocurrir en operaciones básicas.
enum DivisionError: Error {
    case divisionByZero
}

/// División segura: lanza DivisionError si b es cero.
func safeDivide(_ a: Double, _ b: Double) throws -> Double {
    guard b != 0 else { throw DivisionError.divisionByZero }
    return a / b
}

func runBasicErrorHandlingExamples() {
    // --- do/catch: manejar división por cero ---
    do {
        let result = try safeDivide(10, 0)
        print("Result: \(result)")
    } catch DivisionError.divisionByZero {
        print("Error: Division by zero")
    } catch {
        print("Error: \(error)")
    }

    // --- División exitosa ---
    do {
        let result = try safeDivide(10, 2)
        print("safeDivide(10, 2) = \(result)")
    } catch {
        print("Error: \(error)")
    }

    // --- try? para resultado opcional ---
    if let result = try? safeDivide(10, 0) {
        print("Result: \(result)")
    } else {
        print("safeDivide(10, 0) failed (nil)")
    }
}
