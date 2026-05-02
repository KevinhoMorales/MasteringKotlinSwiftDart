// ignore_for_file: avoid_print
//
//  intermediate_classes.dart
//  MasteringDart
//
//  Capítulo 08 — Clases y objetos.
//  Nivel INTERMEDIO: Clases con métodos (Product, Car).
//
//  Ejecutar con: dart run lib/chapters/chapter08/intermediate/intermediate_classes.dart

/// Clase Product con name y price. Método para calcular precio con descuento.
class Product {
  final String name;
  final double price;

  Product(this.name, this.price);

  /// Devuelve el precio después de aplicar un porcentaje de descuento (ej. 0.2 = 20% de descuento).
  double priceAfterDiscount(double discountPercent) {
    return price * (1 - discountPercent);
  }
}

/// Clase Car con brand y model. Tiene método start().
class Car {
  final String brand;
  final String model;

  Car(this.brand, this.model);

  void start() {
    print('$brand $model is starting...');
  }
}

/// Ejecuta ejemplos intermedios de clases.
void runIntermediateClassExamples() {
  final product = Product('Laptop', 999.99);
  print('Product: ${product.name}, price: \$${product.price}');
  final discounted = product.priceAfterDiscount(0.15); // 15% de descuento
  print('Price after 15% discount: \$$discounted');

  final car = Car('Toyota', 'Camry');
  print('Car: ${car.brand} ${car.model}');
  car.start();
}

void main() {
  runIntermediateClassExamples();
}
