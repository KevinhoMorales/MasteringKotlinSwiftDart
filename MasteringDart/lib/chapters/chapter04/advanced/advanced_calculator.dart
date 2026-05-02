// ignore_for_file: avoid_print
//
//  advanced_calculator.dart
//  MasteringDart
//
//  Capítulo 04 — Operadores y expresiones.
//  Nivel AVANZADO: Un pequeño programa calculadora tipo consola.
//
//  Ejecutar con: dart run lib/chapters/chapter04/advanced/advanced_calculator.dart

/// Ejecuta el ejemplo de la calculadora.
void runCalculatorExample() {
  // --- Dos números (en una app real podrían leerse de la entrada del usuario) ---
  const num1 = 24.0;
  const num2 = 8.0;

  // --- Selección de operador: simulamos elegir +, -, *, / ---
  const operation = '/'; // Cambiar a '+', '-', '*' o '/'

  // --- Calcular resultado con operadores aritméticos ---
  double result;
  switch (operation) {
    case '+':
      result = num1 + num2; // suma
      break;
    case '-':
      result = num1 - num2; // resta
      break;
    case '*':
      result = num1 * num2; // multiplicación
      break;
    case '/':
      result = num2 != 0 ? num1 / num2 : double.nan; // división (evitar / 0)
      break;
    default:
      result = double.nan;
  }

  // --- Imprimir el resultado (estilo consola) ---
  print('========================================');
  print('           SIMPLE CALCULATOR');
  print('========================================');
  print('First number:  $num1');
  print('Operator:      $operation');
  print('Second number: $num2');
  print('----------------------------------------');
  if (result.isNaN) {
    print(
        'Result: Invalid (e.g. division by zero or unknown operator)');
  } else {
    print('Result: $num1 $operation $num2 = $result');
  }
  print('========================================');

  // --- Ejecutar los cuatro operadores una vez para mostrar cada uno ---
  print('');
  print('All operations with $num1 and $num2:');
  print('  $num1 + $num2 = ${num1 + num2}');
  print('  $num1 - $num2 = ${num1 - num2}');
  print('  $num1 * $num2 = ${num1 * num2}');
  print('  $num1 / $num2 = ${num1 / num2}');
}

void main() {
  runCalculatorExample();
}
