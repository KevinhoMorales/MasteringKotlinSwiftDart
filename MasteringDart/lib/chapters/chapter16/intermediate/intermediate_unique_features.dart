// ignore_for_file: avoid_print
//
//  intermediate_unique_features.dart
//  MasteringDart
//
//  Capítulo 16 — Características únicas del lenguaje.
//  Nivel INTERMEDIO: Extensión para formatear strings — title case, estilo plantilla.
//
//  Ejecutar con: dart run lib/chapters/chapter16/intermediate/intermediate_unique_features.dart

extension FormatString on String {
  /// Devuelve el string en title case (primera letra de cada palabra en mayúscula).
  String get toTitleCase {
    if (isEmpty) return this;
    return split(' ')
        .map((w) => w.isEmpty
            ? w
            : w.length == 1
                ? w.toUpperCase()
                : w[0].toUpperCase() + w.substring(1).toLowerCase())
        .join(' ');
  }

  /// Reemplaza {0}, {1} por valores (formato simple).
  String format(List<Object> args) {
    var result = this;
    for (var i = 0; i < args.length; i++) {
      result = result.replaceAll('{$i}', args[i].toString());
    }
    return result;
  }
}

void runIntermediateUniqueFeatureExamples() {
  const text = 'hello world';
  print('toTitleCase: "${text.toTitleCase}"');

  const template = 'User: {0}, Score: {1}';
  print('format: "${template.format(['Alice', 95])}"');
}

void main() {
  runIntermediateUniqueFeatureExamples();
}
