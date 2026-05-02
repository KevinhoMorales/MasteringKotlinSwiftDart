package com.devlokos.masteringkotlin.chapters.chapter09.basic

/**
 * Capítulo 09 — Herencia y Polimorfismo.
 * Nivel BÁSICO: Herencia simple — Animal, Dog, Cat con makeSound().
 */
fun main() {
    runBasicInheritanceExamples()
}

/** Clase base: debe marcarse 'open' para permitir herencia en Kotlin. */
open class Animal(val name: String) {
    open fun makeSound() {
        println("$name makes a sound.")
    }
}

/** Dog extiende Animal y sobrescribe makeSound(). */
class Dog(name: String) : Animal(name) {
    override fun makeSound() {
        println("$name says: Woof!")
    }
}

/** Cat extiende Animal y sobrescribe makeSound(). */
class Cat(name: String) : Animal(name) {
    override fun makeSound() {
        println("$name says: Meow!")
    }
}

fun runBasicInheritanceExamples() {
    val dog = Dog("Rex")
    val cat = Cat("Whiskers")
    dog.makeSound()
    cat.makeSound()
}
