package com.devlokos.masteringkotlin.chapters.chapter18.intermediate

/**
 * Capítulo 18 — Desarrollo Multiplataforma.
 * Nivel INTERMEDIO: UserService — lógica de negocio compartida (createUser, validateUser, formatUserDisplay).
 */
fun main() {
    runIntermediateMultiplatformExamples()
}

data class User(val name: String, val email: String, val age: Int)

object UserService {
    fun createUser(name: String, email: String, age: Int): User = User(name, email, age)

    fun validateUser(user: User): Boolean =
        user.name.length >= 2 && user.email.contains("@") && user.age in 1..120

    fun formatUserDisplay(user: User): String =
        "${user.name} (${user.email}) - ${user.age} years"
}

fun runIntermediateMultiplatformExamples() {
    val user = UserService.createUser("Alice", "alice@mail.com", 28)
    println("Created: $user")
    println("Valid: ${UserService.validateUser(user)}")
    println("Display: ${UserService.formatUserDisplay(user)}")
}
