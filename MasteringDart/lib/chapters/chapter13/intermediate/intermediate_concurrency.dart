// ignore_for_file: avoid_print
//
//  intermediate_concurrency.dart
//  MasteringDart
//
//  Capítulo 13 — Concurrencia y asincronía.
//  Nivel INTERMEDIO: async/await — fetch user, simular API, await antes de imprimir.
//
//  Ejecutar con: dart run lib/chapters/chapter13/intermediate/intermediate_concurrency.dart

Future<String> fetchUser() async {
  await Future.delayed(const Duration(milliseconds: 100));
  return 'User(Alice)';
}

Future<String> simulateApiRequest() async {
  await Future.delayed(const Duration(milliseconds: 150));
  return 'API response: OK';
}

Future<void> runIntermediateConcurrencyExamples() async {
  // --- Esperar resultado antes de imprimir ---
  final user = await fetchUser();
  print('Fetched: $user');

  final response = await simulateApiRequest();
  print(response);

  // --- Ejecutar dos peticiones y esperar ambas (paralelo) ---
  final results = await Future.wait([fetchUser(), simulateApiRequest()]);
  print('Combined: ${results[0]}, ${results[1]}');
}

void main() async {
  await runIntermediateConcurrencyExamples();
}
