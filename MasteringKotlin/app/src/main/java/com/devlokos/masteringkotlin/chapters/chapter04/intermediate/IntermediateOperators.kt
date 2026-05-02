package com.devlokos.masteringkotlin.chapters.chapter04.intermediate

/**
 * Capítulo 04 — Operadores y expresiones.
 * Nivel INTERMEDIO: Combinar comparaciones, operadores lógicos y condiciones.
 *
 * Ejemplos: validación de edad, comparación de números, expresiones booleanas.
 */
fun main() {
    runIntermediateOperatorExamples()
}

fun runIntermediateOperatorExamples() {
    // --- Validación de edad (operadores de comparación: <, <=, >, >=, ==, !=) ---
    val age = 17
    val minAge = 18
    val maxAge = 120
    val isAdult = age >= minAge
    val isValidAge = age in 0..maxAge
    println("Age: $age — isAdult (>= $minAge): $isAdult, isValid (0..$maxAge): $isValidAge")

    val ageMessage = if (age >= minAge) "Access granted." else "You must be $minAge or older."
    println(ageMessage)

    // --- Comparación de números ---
    val num1 = 10
    val num2 = 20
    println("Comparison: $num1 == $num2 -> ${num1 == num2}, $num1 < $num2 -> ${num1 < num2}, $num1 != $num2 -> ${num1 != num2}")

    // --- Operadores lógicos (&&, ||, !) ---
    val hasTicket = true
    val hasId = true
    val isBanned = false
    val canEnter = hasTicket && hasId && !isBanned
    println("Logical: hasTicket && hasId && !isBanned -> canEnter = $canEnter")

    val score = 85
    val passingScore = 60
    val bonusThreshold = 90
    val passed = score >= passingScore
    val gotBonus = score >= bonusThreshold
    val passedOrBonus = passed || gotBonus
    println("Score $score: passed=$passed, gotBonus=$gotBonus, passedOrBonus=$passedOrBonus")

    // --- Expresiones booleanas con precedencia de operadores ---
    // Precedencia: comparación antes que && antes que ||
    val temp = 25
    val isSunny = true
    val isWarmDay = temp > 20 && isSunny
    val isOkDay = temp >= 15 || isSunny
    println("temp=$temp, isSunny=$isSunny -> isWarmDay=$isWarmDay, isOkDay=$isOkDay")
}
