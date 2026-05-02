// ignore_for_file: avoid_print
//
//  advanced_multiplatform.dart
//  MasteringDart
//
//  Capítulo 18 — Desarrollo multiplataforma.
//  Nivel AVANZADO: ProductService — capa de servicio compartida.
//
//  Ejecutar con: dart run lib/chapters/chapter18/advanced/advanced_multiplatform.dart

class Product {
  final String id;
  final String name;
  final double price;
  final String category;
  const Product(this.id, this.name, this.price, this.category);
  @override
  String toString() => 'Product($id, $name, $price, $category)';
}

class ProductService {
  static List<Product> fetchProducts() {
    return [
      const Product('1', 'Widget A', 29.99, 'tools'),
      const Product('2', 'Widget B', 49.99, 'tools'),
      const Product('3', 'Gadget X', 19.99, 'electronics'),
    ];
  }

  static List<Product> filterProducts(List<Product> products, String category) {
    return products.where((p) => p.category == category).toList();
  }

  static double calculateDiscount(double price, double percent) {
    return price * (1 - percent / 100);
  }
}

void runAdvancedMultiplatformExamples() {
  print('========================================');
  print('       PRODUCT SERVICE (shared logic)');
  print('========================================');
  final all = ProductService.fetchProducts();
  print('All products: $all');
  final filtered = ProductService.filterProducts(all, 'tools');
  print('Filtered (tools): $filtered');
  final discounted = ProductService.calculateDiscount(49.99, 10);
  print('Discount 10% on 49.99: $discounted');
  print('========================================');
}

void main() {
  runAdvancedMultiplatformExamples();
}
