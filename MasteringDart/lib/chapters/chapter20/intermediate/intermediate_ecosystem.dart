// ignore_for_file: avoid_print
//
//  intermediate_ecosystem.dart
//  MasteringDart
//
//  Capítulo 20 — Ecosistema y bibliotecas.
//  Nivel INTERMEDIO: DateUtils — ayudantes de fecha estilo biblioteca.
//
//  Ejecutar con: dart run lib/chapters/chapter20/intermediate/intermediate_ecosystem.dart

class DateUtils {
  static String formatDate(int timestamp) {
    final dt = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000, isUtc: true);
    final y = dt.year;
    final m = dt.month.toString().padLeft(2, '0');
    final d = dt.day.toString().padLeft(2, '0');
    return '$y-$m-$d';
  }

  static int daysBetween(DateTime from, DateTime to) {
    return to.difference(from).inDays;
  }
}

void runIntermediateEcosystemExamples() {
  print('DateUtils.formatDate(0): ${DateUtils.formatDate(0)}');
  final from = DateTime.utc(1970, 1, 1);
  final to = from.add(const Duration(days: 2));
  print('DateUtils.daysBetween(0, 2 days): ${DateUtils.daysBetween(from, to)}');
}

void main() {
  runIntermediateEcosystemExamples();
}
