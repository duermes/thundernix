// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:thundnix/app/app.dart';

void main() {
  testWidgets('App builds and shows MaterialApp with correct title', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that a MaterialApp is present.
    final materialAppFinder = find.byType(MaterialApp);
    expect(materialAppFinder, findsOneWidget);

    // Verify that the app title matches the expected value.
    final materialApp = tester.widget<MaterialApp>(materialAppFinder);
    expect(materialApp.title, equals('ThunderNix'));
  });
}
