//Data types in Dart

//Dart supports the following data types:

//Numbers (int, double, num)
//Strings
//Booleans
//Lists
//Sets
//Maps


//=========================================================================================================
//1- Numbers

//Dart supports two types of numbers:
//int: Integer values (whole numbers) such as 1, 2, 7, etc.
//double: Floating-point values (decimal numbers) such as 1.1, 2.7, 3.5, etc.
//num: A special type that can represent both int and double values.
//num can be initialized with an int, then assigned a double value, and vice versa.

//example:
void main() {
  int age = 30;
  double height = 5.7;
  num distance = 100;
  print(age); // 30
  print(height); // 5.7
  print(distance); // 100
}


//num can be initialized with an int, then assigned a double value, and vice versa.
// void main() {
//   num distance = 100;
//   print(distance); // 100
//   distance = 105.5;
//   print(distance); // 105.5
// }
//=========================================================================================================




/*
Type casting:
  Null yo = null;
  print(yo); // null
  String num = '1';
  double z = double.parse(num);
  print(z); // 1.0
  int x = z.toInt();
  print(x); // 1
  print(x.runtimeType);
  double y = x.toDouble();
  print(y); // 1.0

  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  print(piAsString); // 3.14
 */
//=========================================================================================================
//=========================================================================================================
//=========================================================================================================

//note: Dart also supports the following operations on numbers:

//Addition (+)
//Subtraction (-)
//Multiplication (*)
//Division (/)
// ~/	Divide, returning an integer result
//Modulo (%)

//example:
// void main() {
//   int a = 10;
//   int b = 3;
//   print(a + b); // 13
//   print(a - b); // 7
//   print(a * b); // 30
//   print(a / b); // 3.3333333333333335
//   print(a ~/ b); // 3
//   print(a % b); // 1
// }


//Increment (++)
//Decrement (--)
//example:
// void main() {
//   int a = 10;
//   a++;
//   print(a); // 11
//   a--;
//   print(a); // 10
// }



//Comparison (==, !=, >, <, >=, <=)
//example:
// void main() {
//   int a = 10;
//   int b = 3;
//   print(a == b); // false
//when you need to know whether two objects are the exact same object, use the identical() function instead.)
//   print(a != b); // true

//   print(a > b); // true
//   print(a < b); // false
//}

//Logical (&&, ||, !)
//example:
// void main() {
//   int a = 10;
//   int b = 3;
//   print(a > b && a < b); // false
//   print(a > b || a < b); // true
//   print(!(a > b)); // false
// }


//Assignment (=, +=, -=, *=)
//example:
// void main() {
//   int a = 10;
//   a += 5;
//   print(a); // 15
//   a -= 3;
//   print(a); // 12
//   a *= 2;
// }


// ??=  Assign the value only if the variable is null
//example:
// void main() {
//   int a;
//   a ??= 10;
//   print(a); // 10
//   a ??= 20;
//   print(a); // 10
// }


//Type conversion (int.parse(), double.parse(), toString())
//example:
// void main() {
//   String age = '30';
//   int ageInt = int.parse(age);
//   print(ageInt); // 30
//   double height = 5.7;
//   String heightString = height.toString();
//   print(heightString); // 5.7
// }

//note: Dart also supports the following operations on numbers:

//Math functions (abs(), ceil(), floor(), round(), min(), max(), pow(), sqrt(), sin(), cos(), tan(), log(), exp(), ....)

//=========================================================================================================
//=========================================================================================================
//=========================================================================================================

//2- Strings

//Strings are sequences of characters enclosed in single or double quotes.
//example:
// void main() {
//   String name = 'Dart';
//   print(name); // Dart
// }

//=========================================================================================================


//=========================================================================================================
//Parsing int to double, or double to int

//To parse a string to an int or double, you can use the int.parse() or double.parse() functions.
//example:
// void main() {
//   String age = '30';
//   int ageInt = int.parse(age);
//   print(ageInt); // 30
// }

//To parse an int to a double, you can use the toDouble() method.

//example:
// void main() {
//   int age = 30;
//   double ageDouble = age.toDouble();
//   print(ageDouble); // 30.0
// }

//=========================================================================================================



//=========================================================================================================
//String also has the following methods:

//length: Returns the length of the string.
//isEmpty: Returns true if the string is empty.
//isNotEmpty: Returns true if the string is not empty.
//toUpperCase: Converts the string to uppercase.
//toLowerCase: Converts the string to lowercase.
//trim: Removes leading and trailing whitespace.
//split: Splits the string into a list of substrings based on a delimiter.
//contains: Returns true if the string contains a substring.
//startsWith: Returns true if the string starts with a substring.
//endsWith: Returns true if the string ends with a substring.
//substring: Returns a substring of the string.
//replaceFirst: Replaces the first occurrence of a substring with another substring.
//replaceAll: Replaces all occurrences of a substring with another substring.
//indexOf: Returns the index of the first occurrence of a substring.
//=========================================================================================================
//=========================================================================================================


//=========================================================================================================
/*
To create a multi-line string, use a triple quote with either single or double quotation marks:

var s1 = '''
You can create
multi-line strings like this one.
''';

var s2 = """This is also a
multi-line string.""";
*/
//=========================================================================================================


//=========================================================================================================


//3- Booleans

//Booleans represent true or false values.
//example:
// void main() {
//   bool isRaslanTheBestInstructorEver = true;
//   print(isRaslanTheBestInstructorEver); // true
// }
//=========================================================================================================




//=========================================================================================================
//4- Lists
//Lists,sets, and maps where moved to another file called: collections
//under: lib/4_collections.dart