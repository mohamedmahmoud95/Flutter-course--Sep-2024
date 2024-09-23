//Collections
// List
// Set
// Map



//=========================================================================================================

//4- Lists

//Lists are ordered collections of values enclosed in square brackets [].

//example:
// void main() {
//   List<int> numbers = [1, 2, 3];
//   print(numbers); // [1, 2, 3]
// }

//note: The type of values in a list can be specified using the angle brackets <>.

//example:
// void main() {
//   List numbers = <int>[1, 2, 3];
//   print(numbers); // [1, 2, 3]
// }


//note: a list can contain values of different types.
//example:
// void main() {
//   List<dynamic> values = [1, 'Dart', true];
//   print(values); // [1, Dart, true]
// }

//=========================================================================================================



//=========================================================================================================

//5- Sets

//Sets are unordered collections of unique values enclosed in curly braces {}.

//example:
// void main() {
//   Set<int> numbers = {1, 2, 3};
//   print(numbers); // {1, 2, 3}
// }

//note: The type of values in a set can be specified using the angle brackets <>.
// void main() {
//   Set values = <dynamic> {1, 1,1, 2,3};
//  print(values); // {1, 2, 3}
// }

//note: if you try to add duplicate values to a set, Dart will ignore the duplicates.


//note: a set can contain values of different types.
//example:
// void main() {
//   Set<dynamic> values = {1, 'Dart', true};
//   print(values); // {1, Dart, true}
// }

//note: sets can be converted to lists using the toList() method.
//note: sets can be used to remove duplicates from a list.
//example:
// void main() {
//   List<int> numbers = [1, 1, 2, 3, 3, 3];
//   Set<int> uniqueNumbers = numbers.toSet();
//   print(uniqueNumbers); // {1, 2, 3}
// }

//=========================================================================================================


//=========================================================================================================
//Notes on Sets:
/*
To create a set that's a compile-time constant, add const before the set literal:

final constantSet = const {
  'fluorine',
  'chlorine',
  'bromine',
  'iodine',
  'astatine',
};
// constantSet.add('helium'); // This line will cause an error.
 */



/*
var names = <String>{};
// Set<String> names = {}; // This works, too.
// var names = {}; // Creates a map, not a set.
 */
//=========================================================================================================

//=========================================================================================================

//6- Maps
/*
Maps
#
In general, a map is an object that associates keys and values.
 Both keys and values can be any type of object.
  Each key occurs only once, but you can use the same value multiple times.
  by default, map is of type Map<dynamic, dynamic>.

examples:
var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings'
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};

You can create the same objects using a Map constructor:

var gifts = Map<String, String>();
gifts['first'] = 'partridge';
gifts['second'] = 'turtledoves';
gifts['fifth'] = 'golden rings';

var nobleGases = Map<int, String>();
nobleGases[2] = 'helium';
nobleGases[10] = 'neon';
nobleGases[18] = 'argon';


// a map can contain keys and values of different types.
void main() {
Map<dynamic , dynamic> map = {
  'Country': 'Egypt',
  'City': 'Cairo',
  'Population': 10000000,
  'IsCapital': true,
  'Languages': ['Arabic', 'English', 'French'],
  'Neighbours': {
    'North': 'Mediterranean Sea',
    'East': 'مش فاكر بصراحة',
    'South': 'مش فاكر بصراحة',
    'West': 'مش فاكر بصراحة',
  },
};

print(map);
print(map['Country']);

}

//Map Entry:

A MapEntry in Dart represents a single key-value pair in a map.
 It consists of a key and its associated value,
 allowing you to easily work with entries when iterating through a map or when constructing maps.
  You can create a MapEntry using the MapEntry constructor, like this:
var entry = MapEntry('key', 'value');

//You can create a map using MapEntry objects:

var gifts = Map<String, String>.fromEntries([
  MapEntry('first', 'partridge'),
  MapEntry('second', 'turtledoves'),
  MapEntry('fifth', 'golden rings'),
]);


Note:
a map can has one of its values as a map.
example:
void main() {
  // Define a map with another map as a value
  Map<String, Map<String, int>> scores = {
    'Mohamed': {'Math': 90, 'Science': 85},
    'Ali': {'Math': 75, 'Science': 95},
  };

  // Accessing values in the nested map
  print(scores['Mohamed']['Math']); // Output: 90
  print(scores['Ali']['Science']); // Output: 95

  // Adding a new subject for Mohamed
  scores['Mohamed']['English'] = 88;

  // Printing the updated map
  print(scores);
}

 */

//Maps are collections of key-value pairs enclosed in curly braces {}.

//example:
// void main() {
//   Map<String, int> scores = {'Alice': 100, 'Bob': 90, 'Charlie': 80};
//   print(scores); // {Alice: 100, Bob: 90, Charlie: 80}
// }

//note: The type of keys and values in a map can be specified using the angle brackets <>.

//example:
// void main() {
//   Map<String, dynamic> person = {'name': 'Dart', 'age': 11};
//   print(person); // {name: Dart, age: 11}
// }


//note: a map can contain keys and values of different types.
//example:
// void main() {
//   Map<dynamic, dynamic> person = {'name': 'Dart', 'age': 11};
//   print(person); // {name: Dart, age: 11}
// }

//note: if you try to add duplicate keys to a map, Dart will overwrite the existing value with the new value.

//example:
// void main() {
//   Map<String, int> scores = {'Alice': 100, 'Bob': 90, 'Alice': 95};
//   print(scores); // {Alice: 95, Bob: 90}
// }

//note: if you try to add duplicate values to a map, Dart will keep the last value.

//example:
// void main() {
//   Map<String, int> scores = {'Alice': 100, 'Bob': 90, 'Charlie': 100};
//   print(scores); // {Alice: 100, Bob: 90, Charlie: 100}
// }

//note: if you try to access a key that does not exist in a map, Dart will return null.

//example:
// void main() {
//   Map<String, int> scores = {'Alice': 100, 'Bob': 90, 'Charlie': 80};
//   print(scores['David']); // null
// }

//note: if you want to provide a default value when accessing a key that does not exist in a map, you can use the null-aware operator (??).

//example:
// void main() {
//   Map<String, int> scores = {'Alice': 100, 'Bob': 90, 'Charlie': 80};
//   print(scores['David'] ?? 0); // 0
// }


//note: if you want to check if a key exists in a map, you can use the containsKey() method.


//example:
// void main() {
//   Map<String, int> scores = {'Alice': 100, 'Bob': 90, 'Charlie': 80};
//   print(scores.containsKey('Alice
//   ')); // true
//   print(scores.containsKey('David
//   ')); // false
// }

//note: if you want to remove a key from a map, you can use the remove() method.

//example:
// void main() {
//   Map<String, int> scores = {'Alice': 100, 'Bob': 90, 'Charlie': 80};
//   scores.remove('Bob');
//   print(scores); // {Alice: 100, Charlie: 80}
// }

//note: if you want to clear all keys and values from a map, you can use the clear() method.

//example:
// void main() {
//   Map<String, int> scores = {'Alice': 100, 'Bob': 90, 'Charlie': 80};
//   scores.clear();
//   print(scores); // {}

// }

//note: if you want to get all keys or values from a map, you can use the keys and values properties.

//example:
// void main() {
//   Map<String, int> scores = {'Alice': 100, 'Bob': 90, 'Charlie': 80};
//   print(scores.keys); // (Alice, Bob, Charlie)
//   print(scores.values); // (100, 90, 80)
// }


//note: if you want to iterate over a map, you can use the forEach() method.

//example:
// void main() {
//   Map<String, int> scores = {'Alice': 100, 'Bob': 90, 'Charlie': 80};
//   scores.forEach((key, value) {
//     print('$key: $value');
//   });
//   // Alice: 100
//   // Bob: 90
//   // Charlie: 80
// }

//note: if you want to copy a map, you can use the Map.from() constructor.

//example:
// void main() {
//   Map<String, int> scores = {'Alice': 100, 'Bob': 90, 'Charlie': 80};
//   Map<String, int> copy = Map.from(scores);
//   print(copy); // {Alice: 100, Bob: 90, Charlie: 80}
// }


//=========================================================================================================
//=========================================================================================================
//=========================================================================================================





