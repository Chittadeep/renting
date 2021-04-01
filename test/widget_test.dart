// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:renting/Home.dart';
import 'package:renting/Screens/MyApp.dart';

void main() {
  List l = [
    Home("Bidhan Park", "Susit Kumar Sinha", "9832747626", "asset/home1.jpg",
        500.00),
    Home("Arvil Park", "Tridib Sinha", "9832747626", "asset/home2.jpg", 600.00),
    Home("Shankarpur", "Soma Biswas", "9132744762", "asset/home3.jpeg", 700.00),
    Home("Kolkata", "Chittadeep Biswas", "8967149075", "Assets/Photo4.jpg",
        800.00)
  ];
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp(l));

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
