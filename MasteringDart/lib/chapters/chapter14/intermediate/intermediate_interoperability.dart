// ignore_for_file: avoid_print
//
//  intermediate_interoperability.dart
//  MasteringDart
//
//  Capítulo 14 — Interoperabilidad.
//  Nivel INTERMEDIO: Estructura de uso de FFI (simulada).
//
//  Estructura FFI real (conceptual):
//    1. typedef NativeFormatDate = Pointer<Utf8> Function(Int64 timestamp);
//    2. final dylib = DynamicLibrary.open('libnative.so');
//    3. final formatDate = dylib.lookupFunction<...>('format_date');
//  Aquí ofrecemos una implementación Dart con la misma API a modo de ilustración.
//
//  Ejecutar con: dart run lib/chapters/chapter14/intermediate/intermediate_interoperability.dart

/// Simula el tipo de utilidad que llamarías vía FFI (biblioteca C).
/// Misma firma que usarías con lookupFunction<NativeFormatDate, DartFormatDate>.
class FfiStyleDateFormatter {
  static String formatDate(int timestamp) {
    final dt = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000, isUtc: true);
    final y = dt.year;
    final m = dt.month.toString().padLeft(2, '0');
    final d = dt.day.toString().padLeft(2, '0');
    return '$y-$m-$d';
  }

  static String formatNow() {
    return formatDate(DateTime.now().toUtc().millisecondsSinceEpoch ~/ 1000);
  }
}

void runIntermediateInteroperabilityExamples() {
  final now = FfiStyleDateFormatter.formatNow();
  print('FfiStyleDateFormatter.formatNow() = $now');

  final formatted = FfiStyleDateFormatter.formatDate(0);
  print('FfiStyleDateFormatter.formatDate(0) = $formatted');
}

void main() {
  runIntermediateInteroperabilityExamples();
}
