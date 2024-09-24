

//
/*
Dart is a true object-oriented language, so even functions are objects and have a type, Function.
 This means that functions can be assigned to variables or passed as arguments to other functions.
 */

//How to define a function in Dart
/*
void main() {
  print('Hello, Dart!');
 */


//Function with parameters

/*
void greet(String name) {
  print('Hello, $name!');
}
 */



//Function with return value

/*
int add(int a, int b) {
  return a + b;
}

void main() {
  int sum = add(2, 3);
  print(sum); // 5
}
 */


//=========================================================================================================
//=========================================================================================================


//Arrow functions
//For functions that contain just one expression, you can use a shorthand syntax:

int add(int a, int b) => a+b;


/*
Although Effective Dart recommends type annotations for public APIs, the function still works if you omit the types:
*/
//Example:

bool userSignedIn = false;

bool isUserSignedIn() {
  return userSignedIn == true;
}

isUserSignedIn2() {
  return userSignedIn == true;
}

isUserSignedIn3() => userSignedIn == true;


//Function with optional positional parameters
/*
void greet(String name, [String? greeting]) {
  if (greeting != null) {
    print('$greeting, $name!');
  } else {
    print('Hello, $name!');
  }
 */



//=========================================================================================================
//=========================================================================================================



//Function with default parameters
//you can assign a default value to a parameter by using the = operator followed by the default value.

//example:

void greet4(String name, [String greeting = 'Hello']) {
  print('$greeting, $name!');
}

//important note:
//The specified default value must be a compile-time constant.
//because default values are evaluated at compile-time, not runtime.
//Why?
/*
 The reason these default values must be compile-time constants is to ensure that the values are known at compile time and can be consistently used throughout the code.

Reasons for Compile-Time Constants in general:
Performance: Compile-time constants can be optimized by the Dart compiler, leading to faster execution.
Predictability: Using constants ensures that the default value will not change at runtime, providing consistent behavior across function calls (imagine if it changed to null during run-time).
Memory Efficiency: Constants can be stored more efficiently than non-constant values, which may require additional memory allocation.
 */


//note: parameters in the past examples are called positional parameters.
// which means, the order of the arguments must match the order of the parameters in the function definition.
// which can be a problem when you have a lot of parameters.
// examples:

double calcSalary(int hours, double rate, double bonus, int overtime, double tax, double insurance, double otherDeductions) {
  return (hours + overtime) * rate + bonus - tax - insurance - otherDeductions;
}

//imagine mixing deduction with the bonus, or the rate with the insurance, etc.
//To fix this: introducing named parameters, for a more readable and maintainable code.

//Function with named parameters
//you just need to add curly braces {} around the parameters in the function definition.
// if a parameter is required, you can use the required keyword before the parameter name.
// if it's optional, you can assign a default value to it, or make it nullable by adding a question mark ? after the type.

void greet({required String name, String? greeting}) {
  if (greeting != null) {
    print('$greeting, $name!');
  } else {
    print('Hello, $name!');
  }
}

  void greet2({required String name, String? greeting = 'Hello'}) {
    print('$greeting, $name!');
  }

  //note: you can always define a default value for a named parameter (besides null), simply use = to specify a default value.
// The specified value must be a compile-time constant. For example:


// a bit weird note: A parameter marked as required can still be nullable:

  // void greet7({required String? name, String greeting = 'Hello'}) {
  //   print('$greeting, $name!');
  // }
  //
  // void main()
  // {
  //   greet7(name: null);
  // }
//nullable here just means that it can be null, but it's still required to be passed to the function (not optional).

//note: you cannot use [] to define named parameters, only {}, with a null operator '?' if the parameter is nullable.


//note: you can mix positional and named parameters in the same function, but the positional parameters must come before the named parameters in function definition.

//example:

void greet3(String name, {String? greeting}) {
  if (greeting != null) {
    print('$greeting, $name!');
  } else {
    print('Hello, $name!');
  }
}

//=========================================================================================================
//=========================================================================================================


//Anonymous functions
//Anonymous functions are functions without a name.
//They are defined using the => syntax, also known as the fat arrow syntax.

//example:

void main() {
  var add = (int a, int b) => a + b;
  print(
      add(2,3)
  );
}

//note: you can also use the Function type to define an anonymous function.

//example:

// void main() {
//   Function add = (int a, int b) {
//     return a + b;
//   };
//   print(add(2, 3)); // 5
// }


//Higher-order functions
//Higher-order functions are functions that take other functions as arguments or return a function.
//or simply functions that operate on other functions, either by taking them as arguments or by returning them.
//example:

void greet5(String name, Function(String) greetFunction) {
  greetFunction(name);
}




//=========================================================================================================
//=========================================================================================================


//Lambda functions
//Lambda functions are anonymous functions that can be assigned to a variable or passed as an argument to another function.


//example:

// void main() {
//   var add = (int a, int b) => a + b;
//   print(add(2, 3)); // 5
// }

//another example:

// void main() {
//   var numbers = [1, 2, 3, 4, 5];
//   numbers.forEach((number) {
//     print(number);
//   });
// }

//remember: you can also use the arrow syntax for lambda functions with a single expression.

//example:

// void main() {
//   var numbers = [1, 2, 3, 4, 5];
//   numbers.forEach((number) => print(number));
// }

//note: you might find it a bit odd that we are passing functions to variables now
//but remember, in dart, a function is an object of type "Function", so you can pass it around like any other object.
//in the past example,
//var add = (int a, int b) => a + b;
//if you print(add.runtimeType), you will get (int, int) => int
//which means that add is a function that takes two integers and returns an integer.
//and you can also replace the type of add with Function, like this:
//Function add = (int a, int b) => a + b;


//Note: Lambda functions are also known as: Arrow functions, Lambda expressions, anonymous functions, or closures.
//another example:

// const list = ['apples', 'bananas', 'oranges'];
//
// var uppercaseList = list.map((item) {
//   return item.toUpperCase();
// }).toList();
// // Convert to list after mapping
//
// for (var item in uppercaseList) {
// print('$item: ${item.length}');
// }

//or use the handy arrow operator to shorten it like:
// var uppercaseList = list.map((item) => item.toUpperCase()).toList();
// uppercaseList.forEach((item) => print('$item: ${item.length}'));


//=========================================================================================================
//=========================================================================================================


//side note
//about main function
//The main() function is the entry point of a Dart application.
//It is the first function that is executed when the program is run.
//The main() function can have an optional List<String> parameter that represents the command-line arguments passed to the program.
//example:

// void main(List<String> arguments) {
//   print('Hello, Dart!');
// }


//The question is, What does List<String> arguments mean?
//The List<String> arguments parameter is used to pass command-line arguments to the program.
//just like every other function, you can pass arguments to the main() function when you run the program using the command line.
//example from the official documentation:
/*
// Run the app like this: dart run args.dart 1 test
void main(List<String> arguments) {
  print(arguments);

  assert(arguments.length == 2);
  assert(int.parse(arguments[0]) == 1);
  assert(arguments[1] == 'test');
}
 */

/*
Command-line arguments in Dart (passed to main(List<String> arguments)) are used for several purposes:

Configuration: They allow users to configure the behavior of a program at runtime, such as setting options or modes without changing the code.

Input Data: You can pass data to your program, like file names or URLs, enabling your program to process different inputs each time it runs.

Flags and Options: You can use arguments to set flags (e.g., verbose logging) or options (e.g., choosing an operation), allowing for more flexible execution.

Scripting and Automation: When creating scripts, arguments help automate tasks by enabling scripts to behave differently based on user input.

 //example:

 void main(List<String> arguments) {
  if (arguments.isNotEmpty) {
    String fileName = arguments[0];
    print('Processing file: $fileName');
  } else {
    print('No file provided.');
  }
}

 */


//=========================================================================================================
//=========================================================================================================


//
//In Dart, you can define functions inside other functions.

//example:
// void main()
// {
//   void printHi(){
//     print("Hi");
//   }
//
//   void printHello(){
//     print("Hello");
//     printHi();
//   }
//
//   printHello();
//
// }


//=========================================================================================================
//=========================================================================================================


//Function scope:
//scope is the area of code where a variable is accessible.
//A function is defined by the curly braces {} that enclose its body.

//example:
// bool topLevel = true;
//
//
// void main() {
//   var insideMain = true;
//
//   void myFunction() {
//     var insideFunction = true;
//
//     void nestedFunction() {
//       var insideNestedFunction = true;
//
//       assert(topLevel);
//       assert(insideMain);
//       assert(insideFunction);
//       assert(insideNestedFunction);
//     }
//   }
// }

//The nestedFunction() method can use variables from every level, all the way up to the top level.



//=========================================================================================================
//=========================================================================================================
//Tear-offs

//Dart supports tear-offs, which are a shorthand way to refer to a method or function without invoking it.
//When you refer to a function, method, or named constructor without parentheses, Dart creates a tear-off.
// This is a closure that takes the same parameters as the function and invokes the underlying function when you call it.
// If your code needs a closure that invokes a named function with the same parameters as the closure accepts, don't wrap the call in a lambda. Use a tear-off.

//Example:
//Good:
// var list = [1, 2, 3];
// list.forEach(print);

//Bad:
// var list = [1, 2, 3];
// list.forEach((item) => print(item));

//=========================================================================================================
//=========================================================================================================



//Extra lovely notes from the Dart docs:
/*
Return values
#
All functions return a value. If no return value is specified, the statement return null; is implicitly appended to the function body.

foo() {}

assert(foo() == null);
content_copy
To return multiple values in a function, aggregate the values in a record.

(String, int) foo() {
  return ('something', 42);
}
 */