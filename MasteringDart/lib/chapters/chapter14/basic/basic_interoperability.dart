// ignore_for_file: avoid_print
//
//  basic_interoperability.dart
//  MasteringDart
//
//  Capítulo 14 — Interoperabilidad.
//  Nivel BÁSICO: Dart llamando a una utilidad de estilo nativo (simulada).
//
//  En apps reales, Dart puede llamar a código C/nativo vía FFI (dart:ffi). Aquí simulamos
//  una utilidad "nativa" con el mismo patrón de llamada que usarías con FFI.
//
//  Ejecutar con: dart run lib/chapters/chapter14/basic/basic_interoperability.dart

/// Simula una utilidad de estilo nativo: la misma API que expondrías desde C/FFI.
/// FFI real: DynamicLibrary.open(...); lookup<NativeFunction<...>>('toUpperCase').
class NativeStyleStringUtils {
  static String toUpperCase(String s) {
    return s.toUpperCase();
  }

  static String capitalize(String s) {
    if (s.isEmpty) return s;
    return s[0].toUpperCase() + s.substring(1).toLowerCase();
  }
}

void runBasicInteroperabilityExamples() {
  final upper = NativeStyleStringUtils.toUpperCase('hello');
  print('NativeStyleStringUtils.toUpperCase("hello") = $upper');

  final cap = NativeStyleStringUtils.capitalize('world');
  print('NativeStyleStringUtils.capitalize("world") = $cap');
}

void main() {
  runBasicInteroperabilityExamples();
}
