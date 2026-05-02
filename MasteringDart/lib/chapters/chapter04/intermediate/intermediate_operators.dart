// ignore_for_file: avoid_print
//
//  intermediate_operators.dart
//  MasteringDart
//
//  Capítulo 04 — Operadores y expresiones.
//  Nivel INTERMEDIO: Combinar comparaciones, operadores lógicos y condiciones.
//
//  Ejecutar con: dart run lib/chapters/chapter04/intermediate/intermediate_operators.dart

/// Ejecuta los ejemplos intermedios de operadores.
void runIntermediateOperatorExamples() {
  // --- Validación de edad (operadores de comparación: <, <=, >, >=, ==, !=) ---
  const age = 17;
  const minAge = 18;
  const maxAge = 120;
  final isAdult = age >= minAge;
  final isValidAge = age >= 0 && age <= maxAge;
  print(
      'Age: $age — isAdult (>= $minAge): $isAdult, isValid (0..$maxAge): $isValidAge');

  final ageMessage = age >= minAge
      ? 'Access granted.'
      : 'You must be $minAge or older.';
  print(ageMessage);

  // --- Comparación de números ---
  const num1 = 10;
  const num2 = 20;
  print(
      'Comparison: $num1 == $num2 -> ${num1 == num2}, $num1 < $num2 -> ${num1 < num2}, $num1 != $num2 -> ${num1 != num2}');

  // --- Operadores lógicos (&&, ||, !) ---
  const hasTicket = true;
  const hasId = true;
  const isBanned = false;
  final canEnter = hasTicket && hasId && !isBanned;
  print('Logical: hasTicket && hasId && !isBanned -> canEnter = $canEnter');

  const score = 85;
  const passingScore = 60;
  const bonusThreshold = 90;
  final passed = score >= passingScore;
  final gotBonus = score >= bonusThreshold;
  final passedOrBonus = passed || gotBonus;
  print(
      'Score $score: passed=$passed, gotBonus=$gotBonus, passedOrBonus=$passedOrBonus');

  // --- Expresiones booleanas con precedencia de operadores ---
  const temp = 25;
  const isSunny = true;
  final isWarmDay = temp > 20 && isSunny;
  final isOkDay = temp >= 15 || isSunny;
  print(
      'temp=$temp, isSunny=$isSunny -> isWarmDay=$isWarmDay, isOkDay=$isOkDay');
}

void main() {
  runIntermediateOperatorExamples();
}
