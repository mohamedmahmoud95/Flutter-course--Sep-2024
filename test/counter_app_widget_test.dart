import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing101/counter_app.dart';

void main() {
  group('CounterApp Widget Test', () {
    testWidgets('Initial counter value is 0', (WidgetTester tester) async {
      // Build the CounterApp widget inside the test environment
      await tester.pumpWidget(const MaterialApp(home: CounterApp()));

      // Find the Text widget displaying the counter value
      final counterText = find.textContaining("Counter Value:");

      // Verify the initial counter value is displayed as 0
      expect(counterText, findsOneWidget);
      expect(find.textContaining("0"), findsOneWidget);
    });

    testWidgets('Counter increments when the FloatingActionButton is pressed',
            (WidgetTester tester) async {
          // Build the CounterApp widget inside the test environment
          await tester.pumpWidget(const MaterialApp(home: CounterApp()));

          // Find the FloatingActionButton
          final incrementButton = find.byIcon(Icons.add);


          // Verify the initial counter value
          expect(find.textContaining("0"), findsOneWidget);

          // Tap the increment button and rebuild the widget
          await tester.tap(incrementButton);
          await tester.pump();

          // Verify the counter value increments to 1
          expect(find.textContaining("1"), findsOneWidget);
        });

    testWidgets('Counter decrements when the decrement FloatingActionButton is pressed',
            (WidgetTester tester) async {
          // Build the CounterApp widget inside the test environment
          await tester.pumpWidget(const MaterialApp(home: CounterApp()));

          // Find the decrement FloatingActionButton
          final decrementButton = find.byIcon(Icons.remove);

          // Verify the initial counter value
          expect(find.textContaining("0"), findsOneWidget);

          // Tap the decrement button and rebuild the widget
          await tester.tap(decrementButton);
          await tester.pump();

          // Verify the counter value decrements to -1
          expect(find.textContaining("-1"), findsOneWidget);
        });

    testWidgets('Counter increments and decrements correctly in sequence',
            (WidgetTester tester) async {
          // Build the CounterApp widget inside the test environment
          await tester.pumpWidget(const MaterialApp(home: CounterApp()));

          // Find the FloatingActionButtons
          final incrementButton = find.byIcon(Icons.add);
          final decrementButton = find.byIcon(Icons.remove);

          // Verify the initial counter value
          expect(find.textContaining("0"), findsOneWidget);

          // Increment twice
          await tester.tap(incrementButton);
          await tester.pump();
          await tester.tap(incrementButton);
          await tester.pump();

          // Verify the counter value is now 2
          expect(find.textContaining("2"), findsOneWidget);

          // Decrement once
          await tester.tap(decrementButton);
          await tester.pump();

          // Verify the counter value is now 1
          expect(find.textContaining("1"), findsOneWidget);
        });

    testWidgets('Testing the resetButton', (WidgetTester tester) async{
      //build the counter app widget inside the test environment
      await tester.pumpWidget(const MaterialApp(home: CounterApp()));

      //find the reset button
      final resetButton = find.byIcon(Icons.refresh);

      //verify the initial counter value
      expect(find.textContaining('0'), findsOneWidget);

      //increment the counter by one
      final incrementButton = find.byIcon(Icons.add);
      await tester.tap(incrementButton);
      await tester.pump();

      //verify the counter value is now 1
      expect(find.textContaining('1'), findsOneWidget);

      //tap the reset button and rebuild the widget
      await tester.tap(resetButton);
      await tester.pump();

      //verify the counter value is now 0
      expect(find.textContaining('0'), findsOneWidget);

    });
  });
}