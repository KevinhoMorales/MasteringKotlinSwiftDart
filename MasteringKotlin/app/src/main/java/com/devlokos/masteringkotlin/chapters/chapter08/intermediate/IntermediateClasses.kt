package com.devlokos.masteringkotlin.chapters.chapter08.intermediate

/**
 * Capítulo 08 — Clases y Objetos.
 * Nivel INTERMEDIO: Clases con métodos y lógica simple.
 *
 * Ejemplos: Product (name, price, discount), Car (brand, model, start).
 */
fun main() {
    runIntermediateClassExamples()
}

/**
 * Clase Product con name y price. Tiene un método para calcular el precio con descuento.
 */
class Product(val name: String, val price: Double) {
    /** Devuelve el precio tras aplicar un porcentaje de descuento (ej. 0.2 = 20% off). */
    fun priceAfterDiscount(discountPercent: Double): Double {
        return price * (1 - discountPercent)
    }
}

/**
 * Clase Car con brand y model. Tiene el método start().
 */
class Car(val brand: String, val model: String) {
    fun start() {
        println("$brand $model is starting...")
    }
}

fun runIntermediateClassExamples() {
    // --- Product: propiedades y método ---
    val product = Product("Laptop", 999.99)
    println("Product: ${product.name}, price: \$${product.price}")
    val discounted = product.priceAfterDiscount(0.15) // 15% off
    println("Price after 15% discount: \$$discounted")

    // --- Car: propiedades y método start() ---
    val car = Car("Toyota", "Camry")
    println("Car: ${car.brand} ${car.model}")
    car.start()
}
