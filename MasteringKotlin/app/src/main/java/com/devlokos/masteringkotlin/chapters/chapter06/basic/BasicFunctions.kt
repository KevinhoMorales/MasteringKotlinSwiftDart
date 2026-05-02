package com.devlokos.masteringkotlin.chapters.chapter06.basic

/**
 * Capítulo 06 — Funciones.
 * Nivel BÁSICO: Ejemplos simples de declaración y parámetros de funciones.
 *
 * Cubre: función de saludo, imprimir mensaje, sin parámetros, un parámetro, parámetro por defecto.
 */
fun main() {
    runBasicFunctionExamples()
}

/// Función sin parámetros: imprime un mensaje fijo.
fun printWelcomeMessage() {
    println("Welcome to the exercises!")
}

/// Función con un parámetro: saluda al usuario por nombre.
fun helloUser(name: String) {
    println("Hello, $name!")
}

/// Función con parámetro por defecto: el saludo es "Hello" si no se proporciona.
fun greetUser(name: String, greeting: String = "Hello") {
    println("$greeting, $name!")
}

/// Función que imprime un mensaje personalizado (un parámetro).
fun printMessage(message: String) {
    println(message)
}

fun runBasicFunctionExamples() {
    // --- Función sin parámetros ---
    printWelcomeMessage()

    // --- Función con un parámetro (saludo) ---
    helloUser("Reader")
    helloUser("Alex")

    // --- Parámetro por defecto: podemos omitir el segundo argumento ---
    greetUser("Sam")                    // usa el valor por defecto "Hello"
    greetUser("Jordan", "Hi")           // saludo personalizado

    // --- Función que imprime un mensaje ---
    printMessage("Functions help us reuse logic.")
    printMessage("We can call the same function many times.")
}
