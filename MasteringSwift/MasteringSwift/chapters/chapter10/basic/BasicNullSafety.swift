//
//  BasicNullSafety.swift
//  MasteringSwift
//
//  Capítulo 10 — Null Safety.
//  Nivel BÁSICO: Variables opcionales, comprobaciones null, valores por defecto.
//
//  Swift: Los Optionals usan ? (ej. String?); nil en lugar de null.
//

import Foundation

func runBasicNullSafetyExamples() {
    // --- String opcional: tipo String? (puede contener nil) ---
    var name: String? = "Alice"
    var nickname: String? = nil

    // --- Comprobar si el valor es nil ---
    if name != nil {
        print("Name length: \(name?.count ?? 0)")
    }
    if nickname == nil {
        print("Nickname is nil")
    }

    // --- Nil-coalescing: ?? proporciona valor por defecto cuando nil ---
    let displayName = name ?? "Unknown"
    let displayNick = nickname ?? "No nickname"
    print("Display name: \(displayName)")
    print("Display nick: \(displayNick)")

    // --- Optional binding: if let desempaqueta de forma segura ---
    if let n = name {
        print("Name length (unwrapped): \(n.count)")
    }
    if let nick = nickname {
        print("Nick length: \(nick.count)")
    } else {
        print("Nickname was nil")
    }

    // --- Acceso seguro: encadenamiento opcional ?. ---
    print("Name length (safe): \(name?.count ?? 0)")
    print("Nickname length (safe): \(nickname?.count ?? 0)")
}
