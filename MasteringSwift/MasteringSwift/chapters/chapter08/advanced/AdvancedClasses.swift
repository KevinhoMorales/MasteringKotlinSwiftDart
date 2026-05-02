//
//  AdvancedClasses.swift
//  MasteringSwift
//
//  Capítulo 08 — Clases y objetos.
//  Nivel AVANZADO: BankAccount con deposit, withdraw, checkBalance.
//

import Foundation

/// Clase BankAccount con balance. Métodos: deposit, withdraw, checkBalance.
class BankAccount {
    let owner: String
    private var balance: Double

    init(owner: String, initialBalance: Double = 0) {
        self.owner = owner
        self.balance = initialBalance
    }

    func deposit(amount: Double) {
        if amount > 0 {
            balance += amount
            print("Deposited $\(amount). New balance: $\(balance)")
        }
    }

    func withdraw(amount: Double) {
        if amount > 0 && amount <= balance {
            balance -= amount
            print("Withdrew $\(amount). New balance: $\(balance)")
        } else {
            print("Withdrawal failed: invalid amount or insufficient funds.")
        }
    }

    func checkBalance() {
        print("\(owner)'s balance: $\(balance)")
    }
}

/// Ejecuta ejemplos avanzados de clases. Llamar desde un test o playground.
func runAdvancedClassExamples() {
    print("========================================")
    print("       BANK ACCOUNT EXAMPLE")
    print("========================================")

    let account = BankAccount(owner: "Alice", initialBalance: 100)
    account.checkBalance()
    account.deposit(amount: 50)
    account.withdraw(amount: 30)
    account.withdraw(amount: 200) // debe fallar
    account.checkBalance()
    print("========================================")
}
