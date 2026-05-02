// ignore_for_file: avoid_print
//
//  advanced_generics.dart
//  MasteringDart
//
//  Capítulo 11 — Genéricos.
//  Nivel AVANZADO: Stack genérico — push(), pop(), peek().
//
//  Ejecutar con: dart run lib/chapters/chapter11/advanced/advanced_generics.dart

/// Stack genérico: LIFO. El parámetro de tipo T lo hace reutilizable para cualquier tipo.
class Stack<T> {
  final List<T> _items = [];

  void push(T item) {
    _items.add(item);
  }

  T? pop() {
    if (_items.isEmpty) return null;
    return _items.removeLast();
  }

  T? peek() {
    if (_items.isEmpty) return null;
    return _items.last;
  }

  bool get isEmpty => _items.isEmpty;
  int get size => _items.length;
}

void runAdvancedGenericsExamples() {
  print('========================================');
  print('       GENERIC STACK');
  print('========================================');

  final intStack = Stack<int>();
  intStack.push(1);
  intStack.push(2);
  intStack.push(3);
  print('Stack size: ${intStack.size}');
  print('Peek: ${intStack.peek()}');
  print('Pop: ${intStack.pop()}, ${intStack.pop()}, ${intStack.pop()}, ${intStack.pop()}');

  final stringStack = Stack<String>();
  stringStack.push('first');
  stringStack.push('second');
  print('Peek: ${stringStack.peek()}');
  print('Pop: ${stringStack.pop()}');
  print('========================================');
}

void main() {
  runAdvancedGenericsExamples();
}
