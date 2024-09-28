//Error handling
//content:
//Exceptions
//Stack Trace
//Finally Block
//Assert




// Exceptions:
// Your Dart code can throw and catch exceptions. Exceptions are errors indicating that something unexpected happened.
// If your code throws an exception, you can catch it and handle it before it causes a crash.


//Dart provides Exception and Error types, as well as numerous predefined subtypes.
// You can, of course, define your own exceptions.
// However, Dart programs can throw any non-null object—not just Exception and Error objects—as an exception.

//example on how to catch an exception
double divide (int a, dynamic b) {
  return a / b;
}

void main() {
  print(divide(4, "Hello"));  // This will throw an error, as we are trying to divide an integer by a string, resulting in app crash

  // To prevent the app from crashing, we can use try-catch block
  try{
    print(divide(0, 'hello'));
  } catch(e) {
    print('$e');
  }
//This will print (type 'String' is not a subtype of type 'num') instead of crashing the app
}


//to get the type of an exception you're facing:
void main1() {
  try{
    print(divide(0, 'hello'));
  } catch(e) {
    print('$e');
    print(e.runtimeType);  //this will print: _TypeError, in this case
  }
}

//then, you can update your code to handle that specific exception

void main2() {
  try {
    print(divide(4, "Hello"));
  } on TypeError {
    print(
        "Type error, please check the type of the variable you're passing to the function");
  } catch (e) { // This will catch any other type of error
    print('$e');
  }
}

//As the preceding code shows, you can use either on or catch or both.
// Use on when you need to specify the exception type.
// Use catch when your exception handler needs the exception object.
//=========================================================================================================




//=========================================================================================================
//Stack Trace
//To get even more information about an exception, you can use the stack trace.
//A stack trace is a snapshot of the call stack at a particular point in time.
//A StackTrace is intended to convey information about the call sequence that triggered an exception.
//You can do so by specifying two parameters to catch().
// he first is the exception that was thrown, and the second is the stack trace.

//example:
void main3() {
  try {
    print(divide(4, "Hello"));
  } catch (e, s) {
    print('Exception: $e');
    print('Stack trace: $s');
  }
}
//=========================================================================================================




//=========================================================================================================
/*
 To handle code that can throw more than one type of exception, you can specify multiple catch clauses.
 The first catch clause that matches the thrown object's type handles the exception.
 If the catch clause does not specify a type, that clause can handle any type of thrown object:
 */
void main4() {
  try {
    withdrawMoney(500);
  } on InsufficientFundsException {
    print('You have insufficient funds to complete this transaction.');
  } on NetworkException catch (e) {
    print('Network issue: $e');
  } catch (e) {
    print('Something unexpected happened: $e');
  }
}

void withdrawMoney(double amount) {
  double accountBalance = 300;

  if (amount > accountBalance) {
    throw InsufficientFundsException();
  } else if (!isNetworkAvailable()) {
    throw NetworkException('No internet connection.');
  } else {
    print('Withdrawal of \$${amount} successful!');
  }
}

bool isNetworkAvailable() {
  // Simulate a network issue
  return false;
}

class InsufficientFundsException implements Exception {}

class NetworkException implements Exception {
  final String message;
  NetworkException(this.message);

  @override
  String toString() => message;
}


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
//=========================================================================================================



//=========================================================================================================
//Feeling confused about when to use catch and when to use on?
//Let's put it simply:
//Use catch when you want to catch any exception, regardless of its type.
//Use on when you want to catch a specific type of exception and handle it differently.
//=========================================================================================================





//=========================================================================================================
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
void main5() {
  try {
    print('Opening a file...');
    readFile(); // Simulate a file read operation that might throw an exception.
  } on FileNotFoundException  {
    print('Error: cannot open file');
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

/*
output:
Opening a file...
Error: The file was not found.
Closing the file...
 */
//=========================================================================================================



//=========================================================================================================
//Assert
//Assertions are a way to test assumptions about your code.
//Assertions are used to catch errors during development and testing, not in production.


// During development, use an assert statement— assert(<condition>, <optionalMessage>); —to disrupt normal execution if a boolean condition is false.
//
// // Make sure the variable has a non-null value.
// assert(text != null);
//
// // Make sure the value is less than 100.
// assert(number < 100);
//
// // Make sure this is an https URL.
// assert(urlString.startsWith('https'));
// content_copy
// To attach a message to an assertion, add a string as the second argument to assert (optionally with a trailing comma):
//
// assert(urlString.startsWith('https'),
//     'URL ($urlString) should start with "https".');
// content_copy
// The first argument to assert can be any expression that resolves to a boolean value. If the expression's value is true, the assertion succeeds and execution continues. If it's false, the assertion fails and an exception (an AssertionError) is thrown.
//
//
// Flutter enables assertions in debug mode.
// In production code, assertions are ignored, and the arguments to assert aren't evaluated.
//=========================================================================================================
