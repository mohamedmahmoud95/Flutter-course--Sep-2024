import 'package:flutter_test/flutter_test.dart';
import 'package:testing101/rectangle.dart';



///To run the tests, execute the following command:
///flutter test test/rectangle_unit_test.dart
void main() {
  group("Rectangle Area Tests", () {
    final rectangle = Rectangle();

    test("Calculate area with valid dimensions", () {
      final area = rectangle.calculateArea(5, 10);
      expect(area, 50);
    });

    test("Calculate area with zero dimensions", () {
      final area = rectangle.calculateArea(0, 10);
      expect(area, 0);
    });

    test("Throw error for negative dimensions", () {
      expect(() => rectangle.calculateArea(-5, 10), throwsArgumentError);
    });
  });
}

