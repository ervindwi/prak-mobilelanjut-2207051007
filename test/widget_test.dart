// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:myapp/main.dart';

void main() {
  testWidgets('JustoutApp smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Karena app langsung ke LoginScreen,
    // kita cek apakah ada text/elemen dari LoginScreen
    expect(find.byType(MaterialApp), findsOneWidget);
    expect(find.text('Login'), findsOneWidget); // sesuaikan dengan text di LoginScreen

    // Contoh tes tambahan: cek tidak ada counter bawaan Flutter
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsNothing);
  });
}
