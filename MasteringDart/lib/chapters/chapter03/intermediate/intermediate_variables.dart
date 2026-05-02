// ignore_for_file: avoid_print, dead_code
//
//  intermediate_variables.dart
//  MasteringDart
//
//  Capítulo 03 — Variables, constantes y tipos básicos.
//  Nivel INTERMEDIO: Combinar variables con condiciones o funciones.
//
//  Ejecutar con: dart run lib/chapters/chapter03/intermediate/intermediate_variables.dart

/// Ejecuta los ejemplos intermedios.
void runIntermediateExamples() {
  // --- Variables usadas en condiciones ---
  const score = 85;
  const passingGrade = 60;
  final passed = score >= passingGrade;
  print('Score: $score, Passed: $passed');

  final message = passed ? 'Congratulations!' : 'Keep trying.';
  print(message);

  // --- Constantes en parámetros de función ---
  const price = 99.99;
  const quantity = 3;
  final total = calculateTotal(price, quantity);
  print('Total for $quantity items at \$$price each: \$$total');

  // --- Resultado con inferencia de tipos usado en condición ---
  const temperature = 22.5;
  const unit = 'Celsius';
  final description = describeTemperature(temperature, unit);
  print(description);

  // --- Lógica booleana con variables ---
  const hasSubscription = true;
  const isTrialActive = false;
  // Ambas variables usadas para que el lector vea cómo || funciona con booleanos
  final canAccessPremium = hasSubscription || isTrialActive;
  print('Can access premium: $canAccessPremium (subscription=$hasSubscription, trial=$isTrialActive)');

  // --- Construcción de cadena con interpolación en la lógica ---
  const userName = 'Alex';
  const loginCount = 7;
  final welcomeText = loginCount > 5
      ? "Welcome back, $userName! You're a frequent user."
      : 'Welcome, $userName!';
  print(welcomeText);
}

/// Devuelve el precio total (precio * cantidad).
double calculateTotal(double price, int quantity) {
  return price * quantity;
}

/// Devuelve una descripción de la temperatura.
String describeTemperature(double value, String unit) {
  final feeling = value < 0
      ? 'freezing'
      : value < 15
          ? 'cold'
          : value < 25
              ? 'pleasant'
              : 'hot';
  return 'Temperature: $value° $unit — $feeling';
}

void main() {
  runIntermediateExamples();
}
