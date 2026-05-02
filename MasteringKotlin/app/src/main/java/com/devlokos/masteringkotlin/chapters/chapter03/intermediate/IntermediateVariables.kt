package com.devlokos.masteringkotlin.chapters.chapter03.intermediate

/**
 * Capítulo 03 — Variables, constantes y tipos básicos.
 * Nivel INTERMEDIO: Combinar variables con condiciones o funciones.
 *
 * Muestra variables y constantes usadas dentro de condicionales
 * y funciones simples.
 */
fun main() {
    runIntermediateExamples()
}

fun runIntermediateExamples() {
    // --- Variables usadas en condiciones ---
    val score = 85
    val passingGrade = 60
    val passed = score >= passingGrade
    println("Score: $score, Passed: $passed")

    val message = if (passed) "Congratulations!" else "Keep trying."
    println(message)

    // --- Constantes en parámetros de función ---
    val price = 99.99
    val quantity = 3
    val total = calculateTotal(price, quantity)
    println("Total for $quantity items at $$price each: $$total")

    // --- Resultado con inferencia de tipos usado en condición ---
    val temperature = 22.5
    val unit = "Celsius"
    val description = describeTemperature(temperature, unit)
    println(description)

    // --- Lógica booleana con variables ---
    val hasSubscription = true
    val isTrialActive = false
    val canAccessPremium = hasSubscription || isTrialActive
    println("Can access premium: $canAccessPremium")

    // --- Construcción de cadena con interpolación en la lógica ---
    val userName = "Alex"
    val loginCount = 7
    val welcomeText = if (loginCount > 5) {
        "Welcome back, $userName! You're a frequent user."
    } else {
        "Welcome, $userName!"
    }
    println(welcomeText)
}

/**
 * Devuelve el precio total (precio * cantidad).
 */
fun calculateTotal(price: Double, quantity: Int): Double {
    return price * quantity
}

/**
 * Devuelve una descripción de la temperatura.
 */
fun describeTemperature(value: Double, unit: String): String {
    val feeling = when {
        value < 0 -> "freezing"
        value < 15 -> "cold"
        value < 25 -> "pleasant"
        else -> "hot"
    }
    return "Temperature: $value° $unit — $feeling"
}
