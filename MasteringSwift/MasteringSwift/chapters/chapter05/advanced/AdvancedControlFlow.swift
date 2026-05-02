//
//  AdvancedControlFlow.swift
//  MasteringSwift
//
//  Capítulo 05 — Flujo de control (if, when/switch, bucles).
//  Nivel AVANZADO: Juego de adivinar número (simulado).
//
//  Simula intentos en código hasta encontrar el valor correcto.
//  Sin entrada del usuario — ejecutable y determinista para el libro.
//

import Foundation

/// Ejecuta el ejemplo del juego de adivinar. Llamar desde un test o playground.
func runGuessingGameExample() {
    let secretNumber = 7
    // "Intentos" simulados — en una app real provendrían de entrada del usuario
    let guesses = [3, 10, 5, 7, 2]

    print("========================================")
    print("       NUMBER GUESSING GAME")
    print("========================================")
    print("(Simulated: we try guesses until we find the secret.)")
    print("Secret number is in 1...10.")
    print("----------------------------------------")

    var attempt = 0
    var found = false
    for guess in guesses {
        attempt += 1
        if guess < 1 || guess > 10 {
            print("Attempt \(attempt): \(guess) — Invalid! Choose between 1 and 10.")
        } else if guess < secretNumber {
            print("Attempt \(attempt): \(guess) — Too low!")
        } else if guess > secretNumber {
            print("Attempt \(attempt): \(guess) — Too high!")
        } else {
            print("Attempt \(attempt): \(guess) — Correct! You won in \(attempt) attempt(s).")
            found = true
            break
        }
    }

    if !found {
        print("----------------------------------------")
        print("No correct guess in this run. Secret was \(secretNumber).")
    }
    print("========================================")

    // --- Sistema de menú simple (opciones simuladas) ---
    print("")
    runMenuExample()
}

/// Menú simple con switch. Opción simulada.
func runMenuExample() {
    print("----------------------------------------")
    print("       SIMPLE MENU (simulated)")
    print("----------------------------------------")
    let choice = 2 // Opción de usuario simulada: 1=Jugar, 2=Config, 3=Salir
    switch choice {
    case 1:
        print("You chose: Play")
    case 2:
        print("You chose: Settings")
    case 3:
        print("You chose: Quit")
    default:
        print("Invalid option: \(choice)")
    }
    print("----------------------------------------")
}
