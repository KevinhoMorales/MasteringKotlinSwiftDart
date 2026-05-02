//
//  IntermediateDesignPatterns.swift
//  MasteringSwift
//
//  Capítulo 17 — Patrones de diseño.
//  Nivel INTERMEDIO: Builder — construir User paso a paso con API fluida.
//

import Foundation

fileprivate struct User {
    let name: String
    let email: String
    let age: Int
}

fileprivate class UserBuilder {
    private var name: String = ""
    private var email: String = ""
    private var age: Int = 0

    func name(_ n: String) -> UserBuilder { name = n; return self }
    func email(_ e: String) -> UserBuilder { email = e; return self }
    func age(_ a: Int) -> UserBuilder { age = a; return self }
    func build() -> User { User(name: name, email: email, age: age) }
}

func runIntermediateDesignPatternExamples() {
    let user = UserBuilder()
        .name("Alice")
        .email("alice@mail.com")
        .age(28)
        .build()
    print("Built user: \(user)")
}
