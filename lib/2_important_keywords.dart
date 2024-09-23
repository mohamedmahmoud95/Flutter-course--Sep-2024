//Important keywords in Dart
// const, final, var, dynamic, object, late
//Object vs dynamic in Dart



// const: The const keyword is used to declare a compile-time constant variable. The value of a const variable must be known at compile time.
// example:
// const int x = 5;
// const double y = 3.14;
// const String name = 'Dart';
// const bool active = true;
// const List<int> numbers = [1, 2, 3];
// const Map<String, int> scores = {'Alice': 100, 'Bob': 90};

//const someListName = []; // Equivalent to `const []`
//someListName = [42]; // Error: Constant variables can't be assigned a value.



// final: The final keyword is used to declare a variable that can be assigned only once. Once a final variable is assigned a value, it cannot be changed.
// example:
// final int x = 5;
// final double y = 3.14;

/*
So, if you never intend to change a variable, use final or const, either instead of var or in addition to a type.
A final variable can be set only once; a const variable is a compile-time constant. (Const variables are implicitly final.)

//Skip the following 2lines if you don't understand the concept of classes, we will discuss it later.
note: Instance variables can be final but not const.
Use const for variables that you want to be compile-time constants. If the const variable is at the class level, mark it static const.
*/

// var: The var keyword is used to declare a variable without specifying its type explicitly. The type of the variable is inferred from the value assigned to it.
// example:
// var x = 5;
// var y = 3.14;
// var name = 'Dart';
// var active = true;
// var numbers = [1, 2, 3];
// var scores = {'Alice': 100, 'Bob': 90};



// dynamic: The dynamic keyword is used to declare a variable whose type is not known until runtime. The type of a dynamic variable can change during the execution of the program.
// example:
// dynamic x = 5;
// x = 'Dart';
// x = true;



// object: The object keyword is used to declare a variable of type Object, which is the root of the Dart class hierarchy. An object variable can refer to any object instance.
// example:
// Object obj = 'Dart';
// obj = 5;
// obj = true;



// late: The late keyword is used to declare a non-nullable variable that is initialized at a later time. A late variable must be assigned a value before it is accessed.
// example:
// late int x;
// x = 5;
// print(x); // 5
// x = 10;
// print(x); // 10

/*
When you mark a variable as late but initialize it at its declaration,
 then the initializer runs the first time the variable is used. This lazy initialization is handy in a couple of cases:

The variable might not be needed, and initializing it is costly.
You're initializing an instance variable, and its initializer needs access to this.
In the following example, if the temperature variable is never used,
then the expensive readThermometer() function is never called:

// This is the program's only call to readThermometer().
late String temperature = readThermometer(); // Lazily initialized.
 */


// In Dart, the difference between Object and dynamic is:
//
// Object: This is the superclass of all classes in Dart.
// When you declare a variable as Object, it can hold any value,
// but you need to cast it to the appropriate type before using it.
// This provides some type safety.
//
// dynamic: This means the variable can hold any type of value,
// and you don't need to perform type checks or casts.
// However, it sacrifices type safety, so you can run into runtime errors
// if you try to call methods or access properties that don’t exist on the actual object.
//
// In summary, use Object for type safety and dynamic for flexibility.