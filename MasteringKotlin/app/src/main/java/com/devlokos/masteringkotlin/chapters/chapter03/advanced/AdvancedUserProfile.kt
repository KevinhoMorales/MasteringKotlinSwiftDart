package com.devlokos.masteringkotlin.chapters.chapter03.advanced

/**
 * Capítulo 03 — Variables, constantes y tipos básicos.
 * Nivel AVANZADO: Ejemplo tipo consola que genera
 * un perfil de usuario usando variables.
 *
 * Muestra variables, constantes, tipos, booleanos, cadenas
 * e interpolación en un ejemplo cohesionado.
 */
fun main() {
    runUserProfileExample()
}

fun runUserProfileExample() {
    // --- Constantes y variables del perfil ---
    val userName = "Jordan"
    val age = 28
    val heightCm = 175.5
    val isVerified = true
    val memberSinceYear = 2022
    val totalPosts = 142
    val averageRating = 4.7

    // --- Valores calculados (siguen siendo variables/constantes) ---
    val memberYears = 2025 - memberSinceYear
    val postsPerYear = totalPosts / memberYears.coerceAtLeast(1)
    val ratingDescription = when {
        averageRating >= 4.5 -> "excellent"
        averageRating >= 3.5 -> "good"
        else -> "average"
    }

    // --- Construir salida del perfil (estilo consola) ---
    println("========================================")
    println("           USER PROFILE")
    println("========================================")
    println("Name:           $userName")
    println("Age:            $age years")
    println("Height:         $heightCm cm")
    println("Verified:       ${if (isVerified) "Yes" else "No"}")
    println("Member since:   $memberSinceYear (${memberYears} years)")
    println("Total posts:    $totalPosts (~$postsPerYear/year)")
    println("Rating:         $averageRating ($ratingDescription)")
    println("----------------------------------------")
    println("Summary: $userName is a ${if (isVerified) "verified " else ""}user with $totalPosts posts and $ratingDescription rating.")
    println("========================================")
}
