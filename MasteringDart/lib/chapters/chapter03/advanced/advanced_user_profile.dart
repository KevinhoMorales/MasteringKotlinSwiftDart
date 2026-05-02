// ignore_for_file: avoid_print, dead_code
//
//  advanced_user_profile.dart
//  MasteringDart
//
//  Capítulo 03 — Variables, constantes y tipos básicos.
//  Nivel AVANZADO: Ejemplo tipo consola que genera
//  un perfil de usuario usando variables.
//
//  Ejecutar con: dart run lib/chapters/chapter03/advanced/advanced_user_profile.dart

/// Ejecuta el ejemplo de perfil de usuario.
void runUserProfileExample() {
  // --- Constantes y variables del perfil ---
  const userName = 'Jordan';
  const age = 28;
  const heightCm = 175.5;
  const isVerified = true;
  const memberSinceYear = 2022;
  const totalPosts = 142;
  const averageRating = 4.7;

  // --- Valores calculados (siguen siendo variables/constantes) ---
  const currentYear = 2025;
  final memberYears = currentYear - memberSinceYear;
  final effectiveYears = memberYears < 1 ? 1 : memberYears;
  final postsPerYear = totalPosts ~/ effectiveYears;
  final ratingDescription = averageRating >= 4.5
      ? 'excellent'
      : averageRating >= 3.5
          ? 'good'
          : 'average';

  // --- Construir salida del perfil (estilo consola) ---
  print('========================================');
  print('           USER PROFILE');
  print('========================================');
  print('Name:           $userName');
  print('Age:            $age years');
  print('Height:         $heightCm cm');
  print('Verified:       ${isVerified ? "Yes" : "No"}');
  print('Member since:   $memberSinceYear ($memberYears years)');
  print('Total posts:    $totalPosts (~$postsPerYear/year)');
  print('Rating:         $averageRating ($ratingDescription)');
  print('----------------------------------------');
  final verifiedPart = isVerified ? 'verified ' : '';
  print(
      'Summary: $userName is a ${verifiedPart}user with $totalPosts posts and $ratingDescription rating.');
  print('========================================');
}

void main() {
  runUserProfileExample();
}
