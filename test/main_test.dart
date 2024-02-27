import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spyier/main.dart';

void main() {
  testWidgets('Counter increments when pressing the add icon button',
      (tester) async {
    await tester.pumpWidget(const MyApp());
    // incrementing
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.text('1'), findsOneWidget);
    expect(find.text('0'), findsNothing);

    // decrementing
    await tester.tap(find.byIcon(Icons.remove));
    await tester.pump();

    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // reset
    await tester.tap(find.byIcon(Icons.restart_alt));
    await tester.pump();

    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);
  });
}
