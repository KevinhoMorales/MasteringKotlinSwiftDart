// ignore_for_file: avoid_print
//
//  advanced_error_handling.dart
//  MasteringDart
//
//  Capítulo 12 — Manejo de errores.
//  Nivel AVANZADO: Validación UserRegistration — username, email, password.
//
//  Ejecutar con: dart run lib/chapters/chapter12/advanced/advanced_error_handling.dart

/// Excepción base para errores de registro.
class RegistrationException implements Exception {
  final String message;
  RegistrationException(this.message);
  @override
  String toString() => message;
}

class InvalidUsernameException extends RegistrationException {
  InvalidUsernameException(super.message);
}

class InvalidEmailException extends RegistrationException {
  InvalidEmailException(super.message);
}

class InvalidPasswordException extends RegistrationException {
  InvalidPasswordException(super.message);
}

class UserRegistration {
  static void validateUsername(String username) {
    if (username.length < 3) {
      throw InvalidUsernameException(
        "Username must be at least 3 characters: '$username'",
      );
    }
  }

  static void validateEmail(String email) {
    if (!email.contains('@') || !email.contains('.')) {
      throw InvalidEmailException("Invalid email format: '$email'");
    }
  }

  static void validatePassword(String password) {
    if (password.length < 6) {
      throw InvalidPasswordException('Password must be at least 6 characters');
    }
  }

  static void register(String username, String email, String password) {
    validateUsername(username);
    validateEmail(email);
    validatePassword(password);
    print('Registration successful: $username');
  }
}

void runAdvancedErrorHandlingExamples() {
  print('========================================');
  print('       USER REGISTRATION VALIDATION');
  print('========================================');

  // --- Registro válido ---
  try {
    UserRegistration.register('alice', 'alice@mail.com', 'secret123');
  } on RegistrationException catch (e) {
    print('Error: $e');
  }

  // --- Username inválido ---
  try {
    UserRegistration.register('ab', 'bob@mail.com', 'pass123');
  } on InvalidUsernameException catch (e) {
    print('Username error: $e');
  } on RegistrationException catch (e) {
    print('Error: $e');
  }

  // --- Email inválido ---
  try {
    UserRegistration.register('charlie', 'invalid-email', 'pass123');
  } on InvalidEmailException catch (e) {
    print('Email error: $e');
  } on RegistrationException catch (e) {
    print('Error: $e');
  }

  // --- Password inválido ---
  try {
    UserRegistration.register('diana', 'diana@mail.com', '123');
  } on InvalidPasswordException catch (e) {
    print('Password error: $e');
  } on RegistrationException catch (e) {
    print('Error: $e');
  }

  print('========================================');
}

void main() {
  runAdvancedErrorHandlingExamples();
}
