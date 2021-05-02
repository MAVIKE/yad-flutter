// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

// import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:yad/widgets/yad_expansion_tile.dart';

// import 'package:yad/main.dart';

void main() {
  testArithmetic();
  testWidgets('ExpansionWidget has changable title and trailing widgets',
      (WidgetTester tester) async {
    var state = true; // Variable to check callback to be called
    await tester.pumpWidget(MaterialApp(
        home: Scaffold(
            body: YadExpansionTile(
      titleBuilder: (context, collapsed, _) =>
          collapsed ? Text("A") : Text("B"),
      trailingBuilder: (context, collapsed, _) =>
          collapsed ? Icon(Icons.settings) : Icon(Icons.save),
      body: Text("Text"),
      onExpansionChanged: (val) {
        state = false;
      },
    ))));

    // Widget in collapsed state
    var titleFinder = find.text("A");
    var iconFinder = find.byIcon(Icons.settings);
    expect(titleFinder, findsOneWidget);
    expect(iconFinder, findsOneWidget);

    await tester.tap(titleFinder); // tap widget to expand
    await tester.pump(); // wait for widget to rebuid

    // Widget in expanded state
    titleFinder = find.text("B");
    iconFinder = find.byIcon(Icons.save);
    expect(titleFinder, findsOneWidget);
    expect(iconFinder, findsOneWidget);

    // Check that callback was called on tap
    expect(state, false);
  });
}

void testArithmetic() {
  test("Test + operator", () {
    expect(4 + 6, 10);
  });
}
