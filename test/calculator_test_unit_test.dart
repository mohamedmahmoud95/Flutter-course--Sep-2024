import 'package:flutter_test/flutter_test.dart';
import 'package:testing101/calculator.dart';


///To run the tests, execute the following command:
///flutter test test/calculator_test_unit_test.dart
void main() {

  test("Testing the add function in isolation, should return sum of two numbers", () {
    final calculator = Calculator();
    expect(calculator.add(2, 3), 5);
  });

  test('Testing subtract function, subtract zero, should return negative number', () {
    final calculator = Calculator();
    expect(calculator.subtract(0, 3), -3);
  });


  ///Grouping tests
  ///the group function is useful when executing multiple tests that are related to each other.
  ///The group function takes two arguments: a string that describes the group, and a function that contains the tests to be grouped.
  ///The group function can be nested to create subgroups.
  group('Calculator', () {
    test('Testing add function, should return sum of two numbers', () {
      final calculator = Calculator();
      expect(calculator.add(2, 3), 5);
    });

    test('TESTING add function, should return sum of two numbers', () {
      final calculator = Calculator();
      expect(calculator.add(5, 0), 5);
    });

    test('Testing subtract function, should return difference of two numbers', () {
      final calculator = Calculator();
      expect(calculator.subtract(5, 3), 2);
    });

    test('Testing subtract function, subtract zero, should return negative number', () {
      final calculator = Calculator();
      expect(calculator.subtract(0, 3), -3);
    });

    test('Testing multiply function, should return product of two numbers', () {
      final calculator = Calculator();
      expect(calculator.multiply(2, 3), 6);
    });

    test('Testing multiply function, multiply by zero, should return zero', () {
      final calculator = Calculator();
      expect(calculator.multiply(2, 0), 0);
    });

    test('Testing divide function, should return quotient of two numbers', () {
      final calculator = Calculator();
      expect(calculator.divide(6, 3), 2);
    });

    test("Testing divide by zero, should throw an exception", () {
      final calculator = Calculator();
      expect(() => calculator.divide(5, 0), throwsException);
      ///Closure (() =>):
      /// 	•	throwsException works by catching exceptions thrown during the execution of a function.
      /// 	Wrapping the method call in a closure ensures the function is not executed immediately,
      /// but instead only during the test evaluation.
    });
  });
}