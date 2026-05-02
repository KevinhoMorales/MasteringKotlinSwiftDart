package com.devlokos.masteringkotlin.chapters.chapter09.intermediate

/**
 * Capítulo 09 — Herencia y Polimorfismo.
 * Nivel INTERMEDIO: Clase base Vehicle, subclases Car y Bike; startEngine() sobrescrito.
 */
fun main() {
    runIntermediateInheritanceExamples()
}

/** Clase base para vehículos. */
open class Vehicle(val brand: String) {
    open fun startEngine() {
        println("$brand vehicle is starting...")
    }
}

/** Car sobrescribe startEngine(). */
class Car(brand: String) : Vehicle(brand) {
    override fun startEngine() {
        println("$brand car: turning the key, engine running.")
    }
}

/** Bike sobrescribe startEngine(). */
class Bike(brand: String) : Vehicle(brand) {
    override fun startEngine() {
        println("$brand bike: kick-start, engine running.")
    }
}

fun runIntermediateInheritanceExamples() {
    val car = Car("Toyota")
    val bike = Bike("Harley")
    car.startEngine()
    bike.startEngine()
}
