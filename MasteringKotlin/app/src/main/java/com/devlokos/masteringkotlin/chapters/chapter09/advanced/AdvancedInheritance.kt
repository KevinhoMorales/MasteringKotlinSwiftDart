package com.devlokos.masteringkotlin.chapters.chapter09.advanced

/**
 * Capítulo 09 — Herencia y Polimorfismo.
 * Nivel AVANZADO: Clase base Employee, subclases Manager y Developer; calculateSalary() — polimorfismo.
 */
fun main() {
    runAdvancedInheritanceExamples()
}

/** Clase base para empleados. */
open class Employee(val name: String, val baseSalary: Double) {
    open fun calculateSalary(): Double {
        return baseSalary
    }
}

/** Subclase Manager: salary = base + bonus. */
class Manager(name: String, baseSalary: Double, private val bonus: Double) : Employee(name, baseSalary) {
    override fun calculateSalary(): Double {
        return baseSalary + bonus
    }
}

/** Subclase Developer: salary = base + (hours * rate). */
class Developer(name: String, baseSalary: Double, private val extraHours: Int, private val hourlyRate: Double) : Employee(name, baseSalary) {
    override fun calculateSalary(): Double {
        return baseSalary + (extraHours * hourlyRate)
    }
}

fun runAdvancedInheritanceExamples() {
    println("========================================")
    println("       POLYMORPHISM: EMPLOYEES")
    println("========================================")
    val employees: List<Employee> = listOf(
        Employee("Alex", 3000.0),
        Manager("Jordan", 5000.0, 1000.0),
        Developer("Sam", 4000.0, 10, 50.0)
    )
    for (emp in employees) {
        val salary = emp.calculateSalary()
        println("${emp.name} (${emp::class.simpleName}): salary = \$$salary")
    }
    println("========================================")
}
