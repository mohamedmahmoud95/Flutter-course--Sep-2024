


//1. Null Safety in Dart
//Null safety is a feature in Dart that helps developers avoid null reference errors.

//"null" means the absence of a value.

//Dart is a null-aware language, which means it helps prevent errors that happen when trying to use something that doesn’t exist.

//You can use special features, like the ? operator, to safely access values and avoid crashes.

//If a variable can be null, Dart encourages you to handle that possibility, making your code more reliable.

//example:
void main(List<String> arguments) {
  String? name;
  print(name); // null
  name = 'Dart';
  print(name); // Dart
}

/*
// 3 Solution to pass a nullable value to a non-nullable parameter
// 1. Use the bang operator (!) to assert that the value is not null.
// note: The bang operator (!) forces/asserts that the value is not null. If the value is null, it throws an exception.
// be careful when using the bang operator (!) because it can cause a runtime exception if the value is null.
// example:

void main(List<String> arguments) {
  String? name;
  print(name!
      .length); // Error: The property 'length' can't be unconditionally accessed because the receiver can be 'null'.
  name = 'Dart';
  print(name!.length); // 4
}


//2. Use the null-aware operator (?.) to conditionally access the property.
//example:

void main(List<String> arguments) {

  String? name;
  print(name?.length); // null
  name = 'Dart';
  print(name?.length); // 4
  }

// 3. Use the null-aware operator (??) to provide a default value if the value is null.
//example:

void main(List<String> arguments) {
  String? name;
  print(name?.length ?? 'Name is null'); // Name is null
  name = 'Dart';
  print(name?.length ?? 'Name is null'); // 4
}

//4. Use the if statement to check if the value is null before accessing the property.
//example:
void main(List<String> arguments) {
  String? name;
  if (name != null) {
    print(name.length);
  } else {
    print('Name is null');
  }
  name = 'Dart';
  if (name != null) {
    print(name.length);
  } else {
    print('Name is null');
  }
}
 */