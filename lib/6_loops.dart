//Loops in Dart

//Loops are used to execute a block of code repeatedly based on a condition.
//or to loop through a collection of items.

//Dart supports the following types of loops:
//for loop
//for..in loop
//forEach loop
//while loop
//do..while loop
//forEach loop

//=========================================================================================================
//1- for loop
//The for loop is used to execute a block of code a specified number of times.
//example:
// void main() {
//   for (int i = 1; i <= 5; i++) {
//     print(i);
//   }
// }


//Question:
//What do you think the following code will do?
// void main() {
//   for ( ; ; ) {
//     print('Hello!');
//   }
// }

//=========================================================================================================


//=========================================================================================================
//2- for..in loop

//The for..in loop is used to iterate over a collection of items such as a list, set, or map.
//example:
// void main() {
//   List<int> numbers = [1, 2, 3];
//   for (int number in numbers) {
//     print(number);
//   }
// }

//note: The for..in loop can also be used with sets and maps.

//example:

// void main() {
//   Map<String, int> ages = {
//     'Ali': 20,
//     'Sara': 25,
//     'Raslan': 30,
//   };
//   for (String name in ages.keys) {
//     print('$name is ${ages[name]} years old');
//   }
// }

//=========================================================================================================



//=========================================================================================================
//3- forEach loop

//The forEach loop is used to iterate over a collection of items such as a list, set, or map.
//example:
// void main() {
//   List<int> numbers = [1, 2, 3];
//   numbers.forEach((number) {
//     print(number);
//   });
// }


//Iterable classes also have a forEach() method as another option:
//
// var collection = [1, 2, 3];
// collection.forEach(print); // 1 2 3

//=========================================================================================================



//=========================================================================================================

/*
Use continue to skip to the next loop iteration:

for (int i = 0; i < candidates.length; i++) {
  var candidate = candidates[i];
  if (candidate.yearsExperience < 5) {
    continue;
  }
  candidate.interview();
}



f you're using an Iterable such as a list or set, how you write the previous example might differ:

candidates
    .where((c) => c.yearsExperience >= 5)
    .forEach((c) => c.interview());
 */


//=========================================================================================================


//=========================================================================================================
//4- while loop

//The while loop is used to execute a block of code as long as a condition is true.
//example:
// void main() {
//   int i = 1;
//   while (i <= 5) {
//     print(i);
//     i++;
//   }
// }

//Question: What would happen if we forgot the i++ statement in the previous code?
//Question: what does the following code do?
// while(1)
// {
//   print("hello");
// }
//=========================================================================================================


//=========================================================================================================
//5- do..while loop

//The do..while loop is used to execute a block of code once, and then repeatedly execute the block as long as a condition is true.
//example:
// void main() {
//   int i = 1;
//   do {
//     print(i);
//     i++;
//   } while (i <= 5);
// }

//=========================================================================================================
