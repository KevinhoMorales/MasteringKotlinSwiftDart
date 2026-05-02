//
//  IntermediateMultiplatform.swift
//  MasteringSwift
//
//  Capítulo 18 — Desarrollo multiplataforma.
//  Nivel INTERMEDIO: UserService — lógica de negocio compartida.
//

import Foundation

fileprivate struct User {
    let name: String
    let email: String
    let age: Int
}

fileprivate enum UserService {
    static func createUser(name: String, email: String, age: Int) -> User {
        User(name: name, email: email, age: age)
    }

    static func validateUser(_ user: User) -> Bool {
        user.name.count >= 2 && user.email.contains("@") && (1...120).contains(user.age)
    }

    static func formatUserDisplay(_ user: User) -> String {
        "\(user.name) (\(user.email)) - \(user.age) years"
    }
}

func runIntermediateMultiplatformExamples() {
    let user = UserService.createUser(name: "Alice", email: "alice@mail.com", age: 28)
    print("Created: \(user)")
    print("Valid: \(UserService.validateUser(user))")
    print("Display: \(UserService.formatUserDisplay(user))")
}
