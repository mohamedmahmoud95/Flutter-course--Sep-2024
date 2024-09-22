//How to print in Dart

//To print a value in Dart, you can use the print() function.
// The print() function takes a single argument, which can be a string, number, boolean, list, map, or any other object.
//example:
void main() {
  print('Hello, World!'); // Hello, World!
  print(42); // 42
  print(true); // true
  print([1, 2, 3]); // [1, 2, 3]
  print({'name': 'Dart', 'age': 11}); // {name: Dart, age: 11}
}


//The print() function automatically converts the argument to a string and prints it to the console.
// If you want to print multiple values on the same line, you can use string interpolation or concatenation.
//example:
// void main() {
//   String name = 'Dart';
//   int age = 11;
//   print('Name: $name, Age: $age'); // Name: Dart, Age: 11
//   print('Name: ' + name + ', Age: ' + age.toString()); // Name: Dart, Age: 11
// }


//You can use special characters like \n (newline), \t (tab), \ (escape character), and \\ (backslash) in strings.
//example:
// void main() {
//   String message = 'Hello\nWorld!';
//   print(message); // Hello
//                   // World!
// }
