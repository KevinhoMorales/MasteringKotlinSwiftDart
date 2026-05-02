//
//  BasicDesignPatterns.swift
//  MasteringSwift
//
//  Capítulo 17 — Patrones de diseño.
//  Nivel BÁSICO: Singleton — una única instancia compartida (static let shared).
//

import Foundation

/// Singleton: única instancia compartida mediante static let.
final class AppConfig {
    static let shared = AppConfig()
    let appName = "Mastering Swift"
    let version = "1.0"
    private init() {}
}

func runBasicDesignPatternExamples() {
    print("AppConfig.shared.appName = \(AppConfig.shared.appName)")
    print("AppConfig.shared.version = \(AppConfig.shared.version)")
    print("Same instance: \(AppConfig.shared === AppConfig.shared)")
}
