// ignore_for_file: avoid_print
//
//  advanced_functions.dart
//  MasteringDart
//
//  Capítulo 06 — Funciones.
//  Nivel AVANZADO: Utilidad reutilizable con múltiples funciones.
//
//  Ejecutar con: dart run lib/chapters/chapter06/advanced/advanced_functions.dart

// --- Funciones de calculadora ---
double add(double a, double b) => a + b;
double subtract(double a, double b) => a - b;
double multiplyDouble(double a, double b) => a * b;
double divide(double a, double b) => b != 0 ? a / b : double.nan;

/// Aplica la operación dada a dos números y devuelve el resultado.
double calculate(double a, double b, String operation) {
  switch (operation) {
    case '+':
      return add(a, b);
    case '-':
      return subtract(a, b);
    case '*':
      return multiplyDouble(a, b);
    case '/':
      return divide(a, b);
    default:
      return double.nan;
  }
}

// --- Convertidor de temperatura ---
double celsiusToFahrenheit(double celsius) => celsius * 9 / 5 + 32;
double fahrenheitToCelsius(double fahrenheit) =>
    (fahrenheit - 32) * 5 / 9;

// --- Utilidades numéricas ---
bool isEven(int n) => n % 2 == 0;
bool isPrime(int n) {
  if (n < 2) return false;
  var i = 2;
  while (i * i <= n) {
    if (n % i == 0) return false;
    i++;
  }
  return true;
}

/// Ejecuta ejemplos avanzados de funciones.
void runAdvancedFunctionExamples() {
  print('========================================');
  print('       REUSABLE FUNCTION UTILITIES');
  print('========================================');

  // --- Calculadora simple usando funciones ---
  print('\n--- Calculator (10 and 4) ---');
  print('add(10, 4) = ${add(10, 4)}');
  print('subtract(10, 4) = ${subtract(10, 4)}');
  print('multiply(10, 4) = ${multiplyDouble(10, 4)}');
  print('divide(10, 4) = ${divide(10, 4)}');
  print('calculate(10, 4, "+") = ${calculate(10, 4, '+')}');

  // --- Convertidor de temperatura ---
  print('\n--- Temperature converter ---');
  const celsius = 25.0;
  const fahrenheit = 77.0;
  print('$celsius°C = ${celsiusToFahrenheit(celsius)}°F');
  print('$fahrenheit°F = ${fahrenheitToCelsius(fahrenheit)}°C');

  // --- Utilidades numéricas ---
  print('\n--- Number utilities ---');
  print('isEven(8) = ${isEven(8)}, isEven(7) = ${isEven(7)}');
  print('isPrime(7) = ${isPrime(7)}, isPrime(9) = ${isPrime(9)}');

  print('\n========================================');
}

void main() {
  runAdvancedFunctionExamples();
}
