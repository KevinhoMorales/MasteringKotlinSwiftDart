//
//  AdvancedUserProfile.swift
//  MasteringSwift
//
//  Capítulo 03 — Variables, constantes y tipos básicos.
//  Nivel AVANZADO: Ejemplo tipo consola que genera
//  un perfil de usuario usando variables.
//
//  Muestra variables, constantes, tipos, booleanos, cadenas
//  e interpolación en un ejemplo cohesionado.
//

import Foundation

/// Ejecuta el ejemplo de perfil de usuario. Llamar desde un test o playground.
func runUserProfileExample() {
    // --- Constantes y variables del perfil ---
    let userName = "Jordan"
    let age = 28
    let heightCm = 175.5
    let isVerified = true
    let memberSinceYear = 2022
    let totalPosts = 142
    let averageRating = 4.7

    // --- Valores calculados (siguen siendo variables/constantes) ---
    let currentYear = 2025
    let memberYears = currentYear - memberSinceYear
    let effectiveYears = max(memberYears, 1)
    let postsPerYear = totalPosts / effectiveYears
    let ratingDescription: String
    if averageRating >= 4.5 {
        ratingDescription = "excellent"
    } else if averageRating >= 3.5 {
        ratingDescription = "good"
    } else {
        ratingDescription = "average"
    }

    // --- Construir salida del perfil (estilo consola) ---
    print("========================================")
    print("           USER PROFILE")
    print("========================================")
    print("Name:           \(userName)")
    print("Age:            \(age) years")
    print("Height:         \(heightCm) cm")
    print("Verified:       \(isVerified ? "Yes" : "No")")
    print("Member since:   \(memberSinceYear) (\(memberYears) years)")
    print("Total posts:    \(totalPosts) (~\(postsPerYear)/year)")
    print("Rating:         \(averageRating) (\(ratingDescription))")
    print("----------------------------------------")
    let verifiedPart = isVerified ? "verified " : ""
    print("Summary: \(userName) is a \(verifiedPart)user with \(totalPosts) posts and \(ratingDescription) rating.")
    print("========================================")
}
