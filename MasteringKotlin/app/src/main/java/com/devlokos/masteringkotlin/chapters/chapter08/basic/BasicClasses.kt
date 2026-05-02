package com.devlokos.masteringkotlin.chapters.chapter08.basic

/**
 * Capítulo 08 — Clases y Objetos.
 * Nivel BÁSICO: Clase simple con propiedades, constructor y creación de objetos.
 *
 * Cubre: declaración de clase, propiedades, constructor, crear e imprimir objetos.
 */
fun main() {
    runBasicClassExamples()
}

/**
 * Clase User simple con dos propiedades: name y age.
 * El constructor primario se declara en la cabecera de la clase.
 */
class User(val name: String, val age: Int) {
    // Las propiedades name y age se crean a partir de los parámetros del constructor (val)
}

fun runBasicClassExamples() {
    // --- Crear objetos usando el constructor ---
    val user1 = User("Alice", 28)
    val user2 = User("Bob", 32)

    // --- Acceder a propiedades e imprimir objetos ---
    println("User 1: ${user1.name}, ${user1.age} years old")
    println("User 2: ${user2.name}, ${user2.age} years old")

    // --- Imprimir el objeto (usa toString; por defecto vemos el nombre de la clase y el hash) ---
    println("user1 = $user1")
}
