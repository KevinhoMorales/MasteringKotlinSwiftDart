//
//  BasicUniqueFeatures.swift
//  MasteringSwift
//
//  Capítulo 16 — Características únicas del lenguaje.
//  Nivel BÁSICO: property wrapper de Swift — envuelve un valor con comportamiento get/set personalizado.
//

import Foundation

/// Property wrapper: almacena un string y lo expone en mayúsculas al leer.
@propertyWrapper
struct Uppercase {
    private var value: String = ""
    var wrappedValue: String {
        get { value.uppercased() }
        set { value = newValue }
    }
    init(wrappedValue: String) { self.value = wrappedValue }
}

func runBasicUniqueFeatureExamples() {
    struct Example {
        @Uppercase var title: String = "hello"
    }
    var ex = Example()
    print("Property wrapper (Uppercase): \(ex.title)")
    ex.title = "world"
    print("After set: \(ex.title)")
}
