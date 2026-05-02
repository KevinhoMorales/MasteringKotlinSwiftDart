// ignore_for_file: avoid_print
//
//  basic_functions.dart
//  MasteringDart
//
//  Capítulo 06 — Funciones.
//  Nivel BÁSICO: Ejemplos simples de declaración de funciones y parámetros.
//
//  Ejecutar con: dart run lib/chapters/chapter06/basic/basic_functions.dart

/// Función sin parámetros: imprime un mensaje fijo.
void printWelcomeMessage() {
  print('Welcome to the exercises!');
}

/// Función con un parámetro: saluda al usuario por nombre.
void helloUser(String name) {
  print('Hello, $name!');
}

/// Función con parámetro por defecto: greeting usa "Hello" si no se proporciona.
void greetUser(String name, [String greeting = 'Hello']) {
  print('$greeting, $name!');
}

/// Función que imprime un mensaje personalizado (un parámetro).
void printMessage(String message) {
  print(message);
}

/// Ejecuta ejemplos básicos de funciones.
void runBasicFunctionExamples() {
  // --- Función sin parámetros ---
  printWelcomeMessage();

  // --- Función con un parámetro (saludo) ---
  helloUser('Reader');
  helloUser('Alex');

  // --- Parámetro por defecto: podemos omitir el segundo argumento ---
  greetUser('Sam');           // usa el valor por defecto "Hello"
  greetUser('Jordan', 'Hi');  // saludo personalizado

  // --- Función que imprime un mensaje ---
  printMessage('Functions help us reuse logic.');
  printMessage('We can call the same function many times.');
}

void main() {
  runBasicFunctionExamples();
}
