// ignore_for_file: avoid_print
//
//  advanced_concurrency.dart
//  MasteringDart
//
//  Capítulo 13 — Concurrencia y asincronía.
//  Nivel AVANZADO: UserService — fetchUser, fetchUserPosts, fetchUserComments; combinar resultados.
//
//  Ejecutar con: dart run lib/chapters/chapter13/advanced/advanced_concurrency.dart

class UserService {
  static Future<String> fetchUser() async {
    await Future.delayed(const Duration(milliseconds: 80));
    return 'User(id=1, name=Alice)';
  }

  static Future<List<String>> fetchUserPosts(int userId) async {
    await Future.delayed(const Duration(milliseconds: 100));
    return ['Post 1', 'Post 2'];
  }

  static Future<List<String>> fetchUserComments(int userId) async {
    await Future.delayed(const Duration(milliseconds: 120));
    return ['Comment A', 'Comment B'];
  }
}

Future<void> runAdvancedConcurrencyExamples() async {
  print('========================================');
  print('       ASYNC USER WORKFLOW');
  print('========================================');

  final user = await UserService.fetchUser();
  print('User: $user');

  // --- Ejecutar posts y comments en paralelo ---
  final postsFuture = UserService.fetchUserPosts(1);
  final commentsFuture = UserService.fetchUserComments(1);
  final posts = await postsFuture;
  final comments = await commentsFuture;
  print('Posts: $posts');
  print('Comments: $comments');
  print('----------------------------------------');
  print('Done.');
  print('========================================');
}

void main() async {
  await runAdvancedConcurrencyExamples();
}
