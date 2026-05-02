//
//  BasicFunctions.swift
//  MasteringSwift
//
//  Capítulo 06 — Funciones.
//  Nivel BÁSICO: Ejemplos simples de declaración de funciones y parámetros.
//
//  Cubre: función de saludo, imprimir mensaje, sin parámetros, un parámetro, parámetro por defecto.
//

import Foundation

/// Función sin parámetros: imprime un mensaje fijo.
func printWelcomeMessage() {
    print("Welcome to the exercises!")
}

/// Función con un parámetro: saluda al usuario por nombre.
func helloUser(name: String) {
    print("Hello, \(name)!")
}

/// Función con parámetro por defecto: greeting usa "Hello" si no se proporciona.
func greetUser(name: String, greeting: String = "Hello") {
    print("\(greeting), \(name)!")
}

/// Función que imprime un mensaje personalizado (un parámetro).
func printMessage(message: String) {
    print(message)
}

/// Ejecuta ejemplos básicos de funciones. Llamar desde un test o playground.
func runBasicFunctionExamples() {
    // --- Función sin parámetros ---
    printWelcomeMessage()

    // --- Función con un parámetro (saludo) ---
    helloUser(name: "Reader")
    helloUser(name: "Alex")

    // --- Parámetro por defecto: podemos omitir el segundo argumento ---
    greetUser(name: "Sam")                     // usa el valor por defecto "Hello"
    greetUser(name: "Jordan", greeting: "Hi")  // saludo personalizado

    // --- Función que imprime un mensaje ---
    printMessage(message: "Functions help us reuse logic.")
    printMessage(message: "We can call the same function many times.")
}
