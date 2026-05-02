package com.devlokos.masteringkotlin.chapters.chapter05.advanced

/**
 * Capítulo 05 — Flujo de control (if, when/switch, bucles).
 * Nivel AVANZADO: Juego de adivinar número (simulado).
 *
 * Simula intentos en código hasta encontrar el valor correcto.
 * Sin entrada de usuario — ejecutable y determinista para el libro.
 */
fun main() {
    runGuessingGameExample()
}

fun runGuessingGameExample() {
    val secretNumber = 7
    // "Intentos" simulados — en una app real vendrían de la entrada del usuario
    val guesses = listOf(3, 10, 5, 7, 2)

    println("========================================")
    println("       NUMBER GUESSING GAME")
    println("========================================")
    println("(Simulated: we try guesses until we find the secret.)")
    println("Secret number is in 1..10.")
    println("----------------------------------------")

    var attempt = 0
    var found = false
    for (guess in guesses) {
        attempt++
        when {
            guess < 1 || guess > 10 -> println("Attempt $attempt: $guess — Invalid! Choose between 1 and 10.")
            guess < secretNumber -> println("Attempt $attempt: $guess — Too low!")
            guess > secretNumber -> println("Attempt $attempt: $guess — Too high!")
            else -> {
                println("Attempt $attempt: $guess — Correct! You won in $attempt attempt(s).")
                found = true
                break
            }
        }
    }

    if (!found) {
        println("----------------------------------------")
        println("No correct guess in this run. Secret was $secretNumber.")
    }
    println("========================================")

    // --- Sistema de menú simple (opciones simuladas) ---
    println()
    runMenuExample()
}

fun runMenuExample() {
    println("----------------------------------------")
    println("       SIMPLE MENU (simulated)")
    println("----------------------------------------")
    val choice = 2 // Elección de usuario simulada: 1=Jugar, 2=Config, 3=Salir
    when (choice) {
        1 -> println("You chose: Play")
        2 -> println("You chose: Settings")
        3 -> println("You chose: Quit")
        else -> println("Invalid option: $choice")
    }
    println("----------------------------------------")
}
