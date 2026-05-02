package com.devlokos.masteringkotlin.chapters.chapter12.advanced

/**
 * Capítulo 12 — Manejo de Errores.
 * Nivel AVANZADO: Validación UserRegistration — username, email, password; throw y manejar de forma segura.
 */
fun main() {
    runAdvancedErrorHandlingExamples()
}

/** Excepción base para errores de registro. */
open class RegistrationException(message: String) : Exception(message)

/** Username demasiado corto o inválido. */
class InvalidUsernameException(message: String) : RegistrationException(message)

/** Formato de email inválido. */
class InvalidEmailException(message: String) : RegistrationException(message)

/** Contraseña demasiado débil. */
class InvalidPasswordException(message: String) : RegistrationException(message)

object UserRegistration {
    fun validateUsername(username: String) {
        if (username.length < 3) {
            throw InvalidUsernameException("Username must be at least 3 characters: '$username'")
        }
    }

    fun validateEmail(email: String) {
        if (!email.contains("@") || !email.contains(".")) {
            throw InvalidEmailException("Invalid email format: '$email'")
        }
    }

    fun validatePassword(password: String) {
        if (password.length < 6) {
            throw InvalidPasswordException("Password must be at least 6 characters")
        }
    }

    fun register(username: String, email: String, password: String) {
        validateUsername(username)
        validateEmail(email)
        validatePassword(password)
        println("Registration successful: $username")
    }
}

fun runAdvancedErrorHandlingExamples() {
    println("========================================")
    println("       USER REGISTRATION VALIDATION")
    println("========================================")

    // --- Registro válido ---
    try {
        UserRegistration.register("alice", "alice@mail.com", "secret123")
    } catch (e: RegistrationException) {
        println("Error: ${e.message}")
    }

    // --- Username inválido ---
    try {
        UserRegistration.register("ab", "bob@mail.com", "pass123")
    } catch (e: InvalidUsernameException) {
        println("Username error: ${e.message}")
    } catch (e: RegistrationException) {
        println("Error: ${e.message}")
    }

    // --- Email inválido ---
    try {
        UserRegistration.register("charlie", "invalid-email", "pass123")
    } catch (e: InvalidEmailException) {
        println("Email error: ${e.message}")
    } catch (e: RegistrationException) {
        println("Error: ${e.message}")
    }

    // --- Password inválido ---
    try {
        UserRegistration.register("diana", "diana@mail.com", "123")
    } catch (e: InvalidPasswordException) {
        println("Password error: ${e.message}")
    } catch (e: RegistrationException) {
        println("Error: ${e.message}")
    }

    println("========================================")
}
