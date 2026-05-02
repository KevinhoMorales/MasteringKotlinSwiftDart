package com.devlokos.masteringkotlin.chapters.chapter08.advanced

/**
 * Capítulo 08 — Clases y Objetos.
 * Nivel AVANZADO: BankAccount con deposit, withdraw y checkBalance.
 */
fun main() {
    runAdvancedClassExamples()
}

/**
 * Clase BankAccount con balance. Métodos: deposit, withdraw, checkBalance.
 */
class BankAccount(val owner: String, initialBalance: Double = 0.0) {
    private var balance = initialBalance

    fun deposit(amount: Double) {
        if (amount > 0) {
            balance += amount
            println("Deposited \$$amount. New balance: \$$balance")
        }
    }

    fun withdraw(amount: Double) {
        if (amount > 0 && amount <= balance) {
            balance -= amount
            println("Withdrew \$$amount. New balance: \$$balance")
        } else {
            println("Withdrawal failed: invalid amount or insufficient funds.")
        }
    }

    fun checkBalance() {
        println("$owner's balance: \$$balance")
    }
}

fun runAdvancedClassExamples() {
    println("========================================")
    println("       BANK ACCOUNT EXAMPLE")
    println("========================================")

    val account = BankAccount("Alice", 100.0)
    account.checkBalance()
    account.deposit(50.0)
    account.withdraw(30.0)
    account.withdraw(200.0) // should fail
    account.checkBalance()
    println("========================================")
}
