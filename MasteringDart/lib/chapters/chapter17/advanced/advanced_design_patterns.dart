// ignore_for_file: avoid_print
//
//  advanced_design_patterns.dart
//  MasteringDart
//
//  Capítulo 17 — Patrones de diseño.
//  Nivel AVANZADO: Observer — NewsPublisher notifica a suscriptores cuando se publican artículos.
//
//  Ejecutar con: dart run lib/chapters/chapter17/advanced/advanced_design_patterns.dart

typedef Subscriber = void Function(String article);

class NewsPublisher {
  final List<Subscriber> _subscribers = [];

  void subscribe(Subscriber handler) {
    _subscribers.add(handler);
  }

  void publish(String article) {
    for (final sub in _subscribers) {
      sub(article);
    }
  }
}

void runAdvancedDesignPatternExamples() {
  print('========================================');
  print('       OBSERVER PATTERN');
  print('========================================');
  final publisher = NewsPublisher();
  publisher.subscribe((article) => print('  Subscriber A: $article'));
  publisher.subscribe((article) => print('  Subscriber B: $article'));
  publisher.publish('Hello World');
  publisher.publish('Breaking News');
  print('========================================');
}

void main() {
  runAdvancedDesignPatternExamples();
}
