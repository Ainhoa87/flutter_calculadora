// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_calculadora/main.dart';

void main() {
  testWidgets('calcula la propina por persona', (WidgetTester tester) async {
    app.main();
    await tester.pump();

    expect(find.text('\$7.20'), findsOneWidget);
    expect(find.text('\$55.20'), findsOneWidget);
    expect(find.text('\$27.60'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    expect(find.text('\$18.40'), findsOneWidget);
  });
}
