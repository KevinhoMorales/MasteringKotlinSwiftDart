// ignore_for_file: avoid_print
//
//  intermediate_functions.dart
//  MasteringDart
//
//  Capítulo 06 — Funciones.
//  Nivel INTERMEDIO: Valores de retorno, múltiples parámetros, utilidades matemáticas simples.
//
//  Ejecutar con: dart run lib/chapters/chapter06/intermediate/intermediate_functions.dart

/// Devuelve la suma de dos números.
int sum(int a, int b) {
  return a + b;
}

/// Devuelve el producto de dos números.
int multiply(int a, int b) {
  return a * b;
}

/// Devuelve el área de un rectángulo (ancho * alto).
double areaOfRectangle(double width, double height) {
  return width * height;
}

/// Ejecuta ejemplos intermedios de funciones.
void runIntermediateFunctionExamples() {
  // --- Funciones que devuelven valores ---
  final total = sum(10, 20);
  print('Sum of 10 and 20: $total');

  final product = multiply(5, 6);
  print('Multiply 5 and 6: $product');

  // --- Función con múltiples parámetros ---
  final area = areaOfRectangle(4, 5);
  print('Area of rectangle 4 x 5: $area');

  // --- Usar valores de retorno en expresiones ---
  print('sum(1, 2) + sum(3, 4) = ${sum(1, 2) + sum(3, 4)}');
}

void main() {
  runIntermediateFunctionExamples();
}
