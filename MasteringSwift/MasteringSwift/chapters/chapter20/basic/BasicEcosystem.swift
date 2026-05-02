//
//  BasicEcosystem.swift
//  MasteringSwift
//
//  Capítulo 20 — Ecosistema y bibliotecas.
//  Nivel BÁSICO: StringUtils — módulo de utilidades simple (estilo biblioteca).
//

import Foundation

fileprivate enum StringUtils {
    static func capitalizeFirstLetter(_ s: String) -> String {
        guard !s.isEmpty else { return s }
        return s.prefix(1).uppercased() + s.dropFirst()
    }

    static func reverseString(_ s: String) -> String {
        return String(s.reversed())
    }
}

func runBasicEcosystemExamples() {
    print("StringUtils.capitalizeFirstLetter(\"hello\"): \(StringUtils.capitalizeFirstLetter("hello"))")
    print("StringUtils.reverseString(\"world\"): \(StringUtils.reverseString("world"))")
}
