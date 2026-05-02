// Test básico de widget en Flutter.
//
// Para interactuar con un widget en el test usa WidgetTester (flutter_test).
// Puedes enviar gestos tap y scroll, buscar hijos en el árbol de widgets,
// leer texto y comprobar propiedades.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mastering_dart/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Construir la app y disparar un frame.
    await tester.pumpWidget(const MyApp());

    // Comprobar que el contador empieza en 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Pulsar el icono '+' y disparar un frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Comprobar que el contador se ha incrementado.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
