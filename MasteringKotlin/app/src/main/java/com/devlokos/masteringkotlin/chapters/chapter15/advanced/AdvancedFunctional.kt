package com.devlokos.masteringkotlin.chapters.chapter15.advanced

/**
 * Capítulo 15 — Programación Funcional.
 * Nivel AVANZADO: StudentScoreSystem — lista → map scores → filter passing → reduce a promedio.
 */
fun main() {
    runAdvancedFunctionalExamples()
}

data class Student(val name: String, val score: Int)

fun runAdvancedFunctionalExamples() {
    val students = listOf(
        Student("Alice", 85),
        Student("Bob", 72),
        Student("Charlie", 90),
        Student("Diana", 58),
        Student("Eve", 88)
    )
    val passingThreshold = 60

    println("========================================")
    println("       STUDENT SCORE SYSTEM")
    println("========================================")
    println("Students: $students")
    println("Passing threshold: $passingThreshold")

    // --- map: extraer scores ---
    val scores = students.map { it.score }
    println("Scores (map): $scores")

    // --- filter: solo scores aprobados ---
    val passingScores = scores.filter { it >= passingThreshold }
    println("Passing scores (filter): $passingScores")

    // --- reduce: suma, luego promedio ---
    val sum = passingScores.reduceOrNull { a, b -> a + b } ?: 0
    val average = if (passingScores.isEmpty()) 0.0 else sum.toDouble() / passingScores.size
    println("Average of passing: $average")

    // --- Pipeline en una sola expresión ---
    val avgPassing = students
        .map { it.score }
        .filter { it >= passingThreshold }
        .let { list -> if (list.isEmpty()) 0.0 else list.sum().toDouble() / list.size }
    println("Pipeline average (passing only): $avgPassing")
    println("========================================")
}
