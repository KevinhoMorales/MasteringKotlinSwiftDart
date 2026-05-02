// ignore_for_file: avoid_print
//
//  advanced_classes.dart
//  MasteringDart
//
//  Capítulo 08 — Clases y objetos.
//  Nivel AVANZADO: BankAccount con deposit, withdraw, checkBalance.
//
//  Ejecutar con: dart run lib/chapters/chapter08/advanced/advanced_classes.dart

/// Clase BankAccount con balance. Métodos: deposit, withdraw, checkBalance.
class BankAccount {
  final String owner;
  double _balance;

  BankAccount(this.owner, [double initialBalance = 0]) : _balance = initialBalance;

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposited \$$amount. New balance: \$$_balance');
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('Withdrew \$$amount. New balance: \$$_balance');
    } else {
      print('Withdrawal failed: invalid amount or insufficient funds.');
    }
  }

  void checkBalance() {
    print('$owner\'s balance: \$$_balance');
  }
}

/// Ejecuta ejemplos avanzados de clases.
void runAdvancedClassExamples() {
  print('========================================');
  print('       BANK ACCOUNT EXAMPLE');
  print('========================================');

  final account = BankAccount('Alice', 100);
  account.checkBalance();
  account.deposit(50);
  account.withdraw(30);
  account.withdraw(200); // debe fallar
  account.checkBalance();
  print('========================================');
}

void main() {
  runAdvancedClassExamples();
}
