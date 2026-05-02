//
//  AdvancedUniqueFeatures.swift
//  MasteringSwift
//
//  Capítulo 16 — Características únicas del lenguaje.
//  Nivel AVANZADO: Property wrapper para almacenamiento de configuración — almacén clave-valor en memoria.
//

import Foundation

/// Almacén "settings" en memoria (simula almacenamiento tipo UserDefaults).
private var storage: [String: String] = [:]

@propertyWrapper
struct Stored {
    let key: String
    var wrappedValue: String {
        get { storage[key] ?? "" }
        set { storage[key] = newValue }
    }
    init(key: String) { self.key = key }
}

func runAdvancedUniqueFeatureExamples() {
    print("========================================")
    print("       SETTINGS STORAGE (Swift)")
    print("========================================")
    struct AppSettings {
        @Stored(key: "username") var username: String
        @Stored(key: "theme") var theme: String
    }
    var settings = AppSettings()
    settings.username = "Alice"
    settings.theme = "dark"
    print("Stored username: \(settings.username), theme: \(settings.theme)")
    var settings2 = AppSettings()
    print("Same values from another instance: \(settings2.username), \(settings2.theme)")
    print("========================================")
}
