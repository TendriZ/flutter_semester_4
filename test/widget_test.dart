// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_semester_4/main.dart';

void main() {
  testWidgets('Dashboard page loads correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(ProviderScope(child: MyApp()));

    // Verify that the app shows loading initially
    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    // Wait for data to load
    await tester.pumpAndSettle(const Duration(seconds: 2));

    // Verify dashboard content appears
    expect(find.text('Selamat Datang! 👋'), findsOneWidget);
    expect(find.text('Admin D4TI'), findsOneWidget);
  });
}
