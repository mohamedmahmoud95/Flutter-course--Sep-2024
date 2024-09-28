//Classes in Dart:

//content:
//classes
//objects
//constructors
//default constructors
//constant constructors
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






//=========================================================================================================
//What if you need a function/method/instruction to be executed when the constructor is called?

//example:
class Employee6 {
  String name;
  String jobTitle;
  double yearsOfExperience;
  double salary;
  double taxes = 0.15;
  double bonus;
  late double netSalary;

  Employee6({required this.name, required this.jobTitle, required this.yearsOfExperience, required this.bonus, required this.salary}){
    sayHello();
    netSalary = calculateSalary(salary, taxes, bonus);
    print("And my net salary is: $netSalary");
  }

  void sayHello() {
    print('Hello, my name is $name, and I\'m a $jobTitle with $yearsOfExperience years of experience.');
  }

  double calculateSalary(double salary, double taxes, double bonus){
    return salary - (salary*taxes) + bonus;
  }
}


// void main(){
//   var employee6 = new Employee6( name: "Raslan", jobTitle: "Flutter Developer", yearsOfExperience: 2.5, bonus: 500, salary: 5000);
// }

//=========================================================================================================






//=========================================================================================================
//Method overriding:

//use the @override keyword to override (create your own version) of a built-in or an inherited method
//example:


// void main(){
//   var employee3 = new Employee3( name: "Raslan", jobTitle: "Flutter Developer", yearsOfExperience: 2.5);
//   print(employee3);     //Instance of 'Employee3'
//   print(employee3.toString());  //Instance of 'Employee3'
// }

//the print() function calls the toString() method of the object to get a string representation of the object.
//If you don't override the toString() method, the default implementation of the Object class is used, which returns the class name and the hash code of the object.
//To override the toString() method, you can use the @override annotation.

class Employee7 {
  String name;                //required parameter
  String jobTitle;            //required parameter
  double? yearsOfExperience;  //optional parameter

  Employee7({required this.name, required this.jobTitle, this.yearsOfExperience});

  void sayHello() {
    print('Hello, my name is $name, and I\'m a $jobTitle${yearsOfExperience != null?  " with $yearsOfExperience years of experience." : "."}');
  }

  @override
  String toString() {
    return 'Employee3{name: $name, jobTitle: $jobTitle, yearsOfExperience: $yearsOfExperience}';
  }
}

// void main(){
//   var employee7 = new Employee7( name: "Raslan", jobTitle: "Flutter Developer", yearsOfExperience: 2.5);
//   print(employee7);     //Employee3{name: Raslan, jobTitle: Flutter Developer, yearsOfExperience: 2.5}
//   print(employee7.toString());  //Employee3{name: Raslan, jobTitle: Flutter Developer, yearsOfExperience: 2.5}
// }

//=========================================================================================================







//=========================================================================================================
//Setters and Getters:

//To access or modify the properties of a class, you can use getters and setters.
//Getters are used to get the value of a property, and setters are used to set the value of a property.
//To define a getter or setter, you use the get or set keyword followed by the property name.

//example:

class Employee8 {
  String name;
  String jobTitle;
  double yearsOfExperience;
  double salary;
  double taxes = 0.15;
  double bonus;
  late double _netSalary;

  Employee8({required this.name, required this.jobTitle, required this.yearsOfExperience, required this.bonus, required this.salary}){
    sayHello();
    _netSalary = calculateSalary(salary, taxes, bonus);
    print("And my net salary is: $_netSalary");
  }

  void sayHello() {
    print('Hello, my name is $name, and I\'m a $jobTitle with $yearsOfExperience years of experience.');
  }

  double calculateSalary(double salary, double taxes, double bonus){
    return salary - (salary*taxes) + bonus;
  }

  double get getNetSalary => _netSalary;

  set setNetSalary(double salary){
    _netSalary = salary;
  }
}

// void main(){
//   var employee8 = new Employee8( name: "Raslan", jobTitle: "Flutter Developer", yearsOfExperience: 2.5, bonus: 500, salary: 5000);
//   print(employee8.getNetSalary); //4750.0
//   employee8.setNetSalary = 6000;
//   print(employee8.getNetSalary); //6000.0
// }

//=========================================================================================================







//=========================================================================================================
//static variables:

//A static variable is shared among all instances of a class.
//meaning: all objects of the class share the same static variable, they will all read the same value of and write in the same static variable.
//To define a static variable, you use the static keyword followed by the variable name.

//example:

class Company{
  String name;
  static double capital = 5000;
  Company(this.name,);

  void updateCompanyCapital(double newCapital){
    capital = newCapital;
  }
}

class Manager{
  String name;
  Manager(this.name);
  Company company = new Company("Company1");

  double get getCapital => Company.capital;

  set setCapital(double newCapital){
    Company.capital = newCapital;
  }

  //or:
  void updateCapital(double newCapital){
    Company.capital = newCapital;
  }


}

class CompanyOwner{
  String name;
  CompanyOwner(this.name);
  Company company = new Company("Company1");

  double get getCapital => Company.capital;

  set setCapital(double newCapital){
    Company.capital = newCapital;
  }

  //or:
  void updateCapital(double newCapital){
    Company.capital = newCapital;
  }

}
//
// void main(){
//   var manager1 = new Manager("Manager1");
//   var manager2 = new Manager("Manager2");
//   var owner1 = new CompanyOwner("Owner1");
//   var owner2 = new CompanyOwner("Owner2");
//
//   print(manager1.getCapital); //5000.0
//   print(manager2.getCapital); //5000.0
//   print(owner1.getCapital); //5000.0
//   print(owner2.getCapital); //5000.0
//
//   manager1.setCapital = 6000;
//   //manager1.updateCompanyCapital(500);  //This will return an error, because the updateCompanyCapital is not a static method, it's an instance method, and it's only from an object of the class.
//   print(manager1.getCapital); //6000.0
//   print(manager2.getCapital); //6000.0
//   print(owner1.getCapital); //6000.0
//   print(owner2.getCapital); //6000.0
//
//   owner1.updateCapital(7000);
//   print(manager1.getCapital); //7000.0
//   print(manager2.getCapital); //7000.0
//   print(owner1.getCapital); //7000.0
//   print(owner2.getCapital); //7000.0
// }


//What are the use cases of a static variable?
//A static variable is used when you want to share a variable among all instances of a class.
//For example, you can use a static variable to keep track of the number of instances of a class.
//You can also use a static variable to store a configuration value that is shared among all instances of a class.
//You can use a static variable to store a global variable that is accessible from anywhere in your program,
// like current app user data or current app theme.
//=========================================================================================================







//=========================================================================================================
//static methods:

//A static method is a method that belongs to the class rather than an instance of the class.
//To define a static method, you use the static keyword followed by the method name.

//example:


class Company1{
  String name;
  static double capital = 5000;
  Company1(this.name,);

  static void updateCapital(double newCapital){
    capital = newCapital;
  }

  static double get getCapital => capital;
}

class Manager1{
  String name;
  Manager1(this.name);
  Company1 company = new Company1("Company1");

  double get getCapital => Company1.capital;

}

class CompanyOwner1{
  String name;
  CompanyOwner1(this.name);
  Company1 company = new Company1("Company1");

  double get getCapital => Company1.capital;


}

// void main(){
//   var manager1 = new Manager1("Manager1");
//   var manager2 = new Manager1("Manager2");
//   var owner1 = new CompanyOwner1("Owner1");
//   var owner2 = new CompanyOwner1("Owner2");
//
//   print(manager1.getCapital); //5000.0
//   print(manager2.getCapital); //5000.0
//   print(owner1.getCapital); //5000.0
//   print(owner2.getCapital); //5000.0
//
//   Company1.updateCapital(6000);
//   print(manager1.getCapital); //6000.0
//   print(manager2.getCapital); //6000.0
//   print(owner1.getCapital); //6000.0
//   print(owner2.getCapital); //6000.0
//
//   Company1.updateCapital(7000);
//   print(manager1.getCapital); //7000.0
//   print(manager2.getCapital); //7000.0
//   print(owner1.getCapital); //7000.0
//   print(owner2.getCapital); //7000.0
// }

//=========================================================================================================







//=========================================================================================================
//Inheritance:

//Inheritance is a mechanism in which a new class inherits properties and behaviors from an existing class.
//The class that is inherited from is called the superclass or parent class.
//The class that inherits from the superclass is called the subclass or child class.
//To inherit from a class, you use the extends keyword followed by the superclass name.

//example:

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void sayHello() {
    print('Hello, my name is $name, and I\'m $age years old.');
  }
}

class Employee9 extends Person {
  String jobTitle;
  double yearsOfExperience;

  Employee9(super.name, super.age, this.jobTitle, this.yearsOfExperience);
  //or:
  // Employee9(String name, int age, this.jobTitle, this.yearsOfExperience) : super(name, age);

  @override
  void sayHello() {
    print('Hello, my name is $name, and I\'m $age years old. I\'m a $jobTitle with $yearsOfExperience years of experience.');
  }
}

// void main(){
//   var employee9 = new Employee9("Raslan", 25, "Flutter Developer", 2.5);
//   employee9.sayHello();
// }


//=========================================================================================================







//=========================================================================================================
// Abstract classes:

//An abstract class is a class that cannot be instantiated directly.
//It is used as a base class for other classes.
//To define an abstract class, you use the abstract keyword before the class name.

//example:

abstract class Person1 {
  String name;
  int age;

  Person1(this.name, this.age);

  void sayHello() {
    print('Hello, my name is $name, and I\'m $age years old.');
  }

  void sayGoodbye();
}

class Employee10 extends Person1 {
  String jobTitle;
  double yearsOfExperience;

  Employee10(String name, int age, this.jobTitle, this.yearsOfExperience) : super(name, age);

  @override
  void sayGoodbye() {
    print('Goodbye, my name is $name, and I\'m $age years old. I\'m a $jobTitle with $yearsOfExperience years of experience.');
  }
}


// void main(){
// //  var  person = new Person1("Raslan", 25);  //Error: The class 'Person1' is abstract and can't be instantiated.
//   var employee10 = new Employee10("Raslan", 25, "Flutter Developer", 2.5);
//   employee10.sayHello();
//   employee10.sayGoodbye();
// }

//Use cases of abstract classes:
//An abstract class is used when you want to define a common interface for a group of classes.
//You can use an abstract class to define a base class that contains common properties and methods that are shared among multiple classes.
//You can use an abstract class to define a base class that contains abstract methods that must be implemented by subclasses.


//=========================================================================================================








//=========================================================================================================
//Interfaces:

//An interface is a contract that defines the properties and methods that a class must implement.
//In Dart, you can create an interface using an abstract class with only abstract methods.
//To implement an interface, a class must extend the interface and implement all the abstract methods defined in the interface.

//example:

abstract class Animal {
  void eat();
  void sleep();
}

class Dog implements Animal {
  @override
  void eat() {
    print('Dog is eating.');
  }

  @override
  void sleep() {
    print('Dog is sleeping.');
  }
}

class Cat implements Animal {
  @override
  void eat() {
    print('Cat is eating.');
  }

  @override
  void sleep() {
    print('Cat is sleeping.');
  }
}

// void main(){
//   var dog = new Dog();
//   dog.eat();
//   dog.sleep();
//
//   var cat = new Cat();
//   cat.eat();
//   cat.sleep();
//
// }


//Use cases of interfaces:
//An interface is used when you want to define a contract that a class must implement.
//You can use an interface to define a common set of methods that must be implemented by multiple classes.
//You can use an interface to define a common set of properties that must be implemented by multiple classes.
//example: you can create an interface called Shape that defines a method called calcArea() that must be implemented by all classes that represent shapes, such as Circle, Rectangle, and Triangle.
//example: you can create an interface for multiple user types, like Admin, User, and Guest, that defines a method that behaves differently for each user type.
//=========================================================================================================

//=========================================================================================================
//a class can be inherited from only one superclass, but it can implement multiple interfaces.
//example:

abstract class Animal1 {
  void eat();
  void sleep();
}

abstract class Pet {
  void play();
}

class Dog1 implements Animal1, Pet {
  void eat() {
    print('Dog is eating.');
  }

  void sleep() {
    print('Dog is sleeping.');
  }

  void play() {
    print('Dog is playing.');
  }
}
//=========================================================================================================








//=========================================================================================================
//Mixins:

//A mixin is a way to reuse code in multiple classes.
//A mixin is a class that contains methods that can be added to other classes.
//To use a mixin, you use the with keyword followed by the mixin name.

//example:

mixin Logger {
  void log(String message) {
    print('Log: $message');
  }
}
mixin Logger2 {
  void log2(String message) {
    print('Log2: $message');
  }
}

class Animal3{
  void eat(){
    print('Animal is eating.');
  }
}

class Cat1 with Logger {
  void meow() {
    print('Cat is meowing.');
    log('Cat is meowing.');
  }
}

//and you can use multiple mixins in a class:
class Dog2 extends Animal3 with Logger, Logger2 {
  @override
  void eat() {
    super.eat();
    log('Dog is eating.');
  }

  void bark() {
    print('Dog is barking.');
    log('Logger1: Dog is barking.');
    log2('Logger2: Dog is barking.');

  }
}



// void main(){
//   var dog2 = Dog2();
//   dog2.bark();
//   dog2.eat();
//
//   var cat1 = Cat1();
//   cat1.meow();
// }
//=========================================================================================================

