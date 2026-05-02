package com.devlokos.masteringkotlin.chapters.chapter17.intermediate

/**
 * Capítulo 17 — Patrones de Diseño.
 * Nivel INTERMEDIO: Builder — construir User paso a paso con API fluida.
 */
fun main() {
    runIntermediateDesignPatternExamples()
}

data class User(val name: String, val email: String, val age: Int)

class UserBuilder {
    private var name: String = ""
    private var email: String = ""
    private var age: Int = 0

    fun name(n: String) = apply { name = n }
    fun email(e: String) = apply { email = e }
    fun age(a: Int) = apply { age = a }
    fun build(): User = User(name, email, age)
}

fun runIntermediateDesignPatternExamples() {
    val user = UserBuilder()
        .name("Alice")
        .email("alice@mail.com")
        .age(28)
        .build()
    println("Built user: $user")
}
