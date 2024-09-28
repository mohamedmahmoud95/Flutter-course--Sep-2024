//Classes in Dart:

//content:
//classes
//objects
//constructors
//default constructors
//named constructors
//constant constructors
//factory constructors
//methods
//inheritance
//getters and setters
//abstract classes
//interfaces
//mixins
//enums
//generics
//extension methods
//static methods
//static variables
//    Static variables aren't initialized until they're used.

//=========================================================================================================
//Classes:
//A class is a blueprint for creating objects. It defines the properties and behaviors of objects.
//To define a class in Dart, you use the class keyword followed by the class name.

//example:
import 'package:dart_basics/9_error_handling.dart';

class Employee {
  String name = "Raslan";
  String jobTitle = "Flutter Developer";
  double yearsOfExperience = 2.5;

  void sayHello() {
    print('Hello, my name is $name, and I\'m a $jobTitle with $yearsOfExperience years of experience.');
  }

}

// void main()
// {
//   var employee = new Employee();   //new is now optional, can be removed.
//   employee.sayHello();
// }

//=========================================================================================================
//to access object properties, use the dot operator (.):
//example:
// void main()
// {
//   var employee = new Employee();
//   print(employee.name); // Raslan
//   employee.name = "Mohamed Raslan";
//   print(employee.name);
//   print(employee.jobTitle); // Flutter Developer
//   print(employee.yearsOfExperience); // 2.5
// }
//=========================================================================================================


//=========================================================================================================
//can you identify the issue with the fist code above?
//The issue is that the class Employee is not reusable.
//It is hard-coded with the name, job title, and years of experience of a specific employee.
//To make the class reusable, you can use constructors to initialize the properties of the class with values
//passed as arguments when creating an object of the class.

//Constructors:
//A constructor is a special method that is used to initialize objects of a class.
//Constructor method automatically gets called when an object of the class is created.
//In Dart, a constructor is defined using the same name as the class.
//There are several types of constructors in Dart:

//default constructors

//named constructors

//constant constructors

//factory constructors

//=========================================================================================================

//Default Constructors:
//If you don't declare a constructor, Dart uses the default constructor.
//The default constructor is a generative constructor without arguments or name.

//=========================================================================================================
//Generative constructors

// To instantiate a class, use a generative constructor.
//example:

class Employee1 {
  String name;
  String jobTitle;
  double yearsOfExperience;

  Employee1(this.name, this.jobTitle, this.yearsOfExperience);

  //The constructor takes three positional parameters: name, jobTitle, and yearsOfExperience.
  //meaning: they have to be passed in the same order, otherwise, you'll get a compile-time error
  //use {} for named parameters, [] for optional parameters



  void sayHello() {
    print('Hello, my name is $name, and I\'m a $jobTitle with $yearsOfExperience years of experience.');
  }
}

// void main(){
//   var employee1 = new Employee1( "Raslan", "Flutter Developer", 2.5);
//   employee1.sayHello();
// }

//=========================================================================================================
//Constructor with optional parameters:
//You can make the parameters of a constructor optional by enclosing them in square brackets [].
//and make the parameters optional by adding a question mark (?) after the type.
//Optional parameters can be positional or named.

//example:

class Employee2 {
  String name;
  String jobTitle;
  double? yearsOfExperience;

  Employee2(this.name, this.jobTitle,[ this.yearsOfExperience]);

  void sayHello() {
    print('Hello, my name is $name, and I\'m a $jobTitle${yearsOfExperience != null?  " with $yearsOfExperience years of experience." : "."}');
  }
}

// void main(){
//   var employee2 = new Employee2( "Raslan", "Flutter Developer");
//   var employee2_2 = new Employee2( "Raslan", "Flutter Developer", 2.5);
//
//   employee2.sayHello();
//   employee2_2.sayHello();
// }

//=========================================================================================================
//Constructor with named parameters:
//It's always a best practice to name your parameters, to avoid passing data to the wrong parameters
//You can make the parameters of a constructor named by enclosing them in curly braces {}.
//Named parameters can be optional or required.

//example:

class Employee3 {
  String name;                //required parameter
  String jobTitle;            //required parameter
  double? yearsOfExperience;  //optional parameter

  Employee3({required this.name, required this.jobTitle, this.yearsOfExperience});

  void sayHello() {
    print('Hello, my name is $name, and I\'m a $jobTitle${yearsOfExperience != null?  " with $yearsOfExperience years of experience." : "."}');
  }
}

// void main(){
//   var employee3 = new Employee3( name: "Raslan", jobTitle: "Flutter Developer");
//   var employee3_2 = new Employee3( name: "Raslan", jobTitle: "Flutter Developer", yearsOfExperience: 2.5);
//   employee3.sayHello();
//   employee3_2.sayHello();
// }

//=========================================================================================================
//Constructor with constant parameters:

//If you want to create a compile-time constant object, you can use a constant constructor.
//To create a constant constructor, add the const keyword before the constructor name.
//And use the final keyword to declare the properties of the class.
//note: The const keyword is used to declare a compile-time constant variable. The value of a const variable must be known at compile time.
//note: you'll not be able to change the value of a constant variable.

//example:

class Employee4 {
  final String name;
  final String jobTitle;
  final double yearsOfExperience;

  const Employee4(this.name, this.jobTitle, this.yearsOfExperience);

  void sayHello() {
    print('Hello, my name is $name, and I\'m a $jobTitle with $yearsOfExperience years of experience.');
  }
}

// void main(){
//   const employee4 = const Employee4( "Raslan", "Flutter Developer", 2.5);
//  // employee4.name = "Mohamed Raslan"; //Error: The final variable 'name' can only be set once.
//   employee4.sayHello();
// }

//=========================================================================================================

