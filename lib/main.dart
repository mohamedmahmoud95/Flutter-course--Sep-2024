
/*
This approach is useful when you want to handle different types of exceptions differently.
The previous example provides:
1- Specific Exception Handling:
    Handling InsufficientFundsException and NetworkException separately is a best practice for maintaining clear and specific error handling.
2- General Exception Handling:
    The on Exception catch(e) block ensures that any standard Dart Exception will be caught.
    This provides a layer of flexibility for catching known but unanticipated exceptions that are still part of the Exception class.
3- Catch-All Block:
    The catch (e) block without any type handles all errors and exceptions,
     even those that are not part of the Exception class hierarchy,
     such as logic or runtime errors (e.g., null reference, integer overflow).
 */

//Feeling confused about when to use catch and when to use on?
//Let's put it simply:
//Use catch when you want to catch any exception, regardless of its type.
//Use on when you want to catch a specific type of exception and handle it differently.


//Finally Block
//The finally block is used to execute code after the try block and catch block(s) have completed.
//The finally block is always executed, regardless of whether an exception is thrown or not.
//The finally block is useful for releasing resources, such as closing files or network connections, that were opened in the try block.

//Example:
// try {
//   // Code that may throw an exception
// } catch (e) {
//   // Code to handle the exception
// } finally {
//   // Code that will always run
// }

//another example:
void main() {
  try {
    print('Opening a file...');
    readFile(); // Simulate a file read operation that might throw an exception.
  } on FileNotFoundException catch (e) {
    print('Error: $e');
  } catch (e) {
    print('An unexpected error occurred: $e');
  } finally {
    // This block always runs, whether an exception is thrown or not.
    print('Closing the file...');
  }
}

void readFile() {
  // Simulating a situation where a file is not found.
  throw FileNotFoundException('The file was not found.');
}

class FileNotFoundException implements Exception {
  final String message;
  FileNotFoundException(this.message);

  @override
  String toString() => message;
}
