// ignore_for_file: avoid_print
//
//  basic_concurrency.dart
//  MasteringDart
//
//  Capítulo 13 — Concurrencia y asincronía.
//  Nivel BÁSICO: Ejecución retardada, simular petición de red (Futures, async/await).
//
//  Ejecutar con: dart run lib/chapters/chapter13/basic/basic_concurrency.dart

/// Imprime mensaje tras un retardo; simula petición de red con retardo.
Future<void> runBasicConcurrencyExamples() async {
  // --- Imprimir mensaje tras retardo ---
  print('Before delay');
  await Future.delayed(const Duration(milliseconds: 100));
  print('After delay (100ms)');

  // --- Simular petición de red con retardo (se ejecuta en segundo plano) ---
  final requestFuture = Future(() async {
    print('Request started...');
    await Future.delayed(const Duration(milliseconds: 200));
    print('Request completed (simulated 200ms)');
  });
  await Future.delayed(const Duration(milliseconds: 50));
  print('Main continues while request runs in background');
  await requestFuture;
}

void main() async {
  await runBasicConcurrencyExamples();
}
