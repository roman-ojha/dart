/*
  *) Synchronous Programming:
    -> In Synchronous operations tasks are performed one at a time and only when one is completed, the following is unblocked. In other waords, you need to wait for a task to finish to move to the next one.
    -> by default dart support synchronous programming.
  *) Asynchronous Programming:
    -> In Asynchronous operations tasks are performed in parallel and are independent of each other. In other words, you don't need to wait for a task to finish to move to the next one.
    -> Three stage:
        1. Uncompleted
        2. Completed with data
        3. Completed with error
    -> In dart, we can do asynchronous programming using two class:
       1. Future class
       2. Stream class
    -> It's usecases:
        1. Fetching data over network
        2. Reading data from a database
        3. Reading data from a file
    *) Future:
        -> A Future is an object that represent the result of an asynchronous operation and can have two status: uncompleted or completed.
        -> EX: Future<String> (String is the data that we will get as response from the Future result)
    *) Stream:
        -> A Stream is a sequence of asynchronous events. It's like a Future but can return multiple values instead of one single value.
    *) Async:
        -> The async keyword is used to mark a function as asynchronous. It can only be used with functions marked with the async modifier.
    *) Await:
        -> The await keyword is used to wait for a Future to complete. It can only be used with functions marked with the async modifier.
*/

import "dart:async";

void main() async {
  print("Line 1");
  await getName(); // if this function return the future and I am using await then it will wait for the future to complete and the next line will execute
  print("Line 3");

  // Uisng Future constructor
  // first future constructor return the uncompleted
  // here in this case future return the instance of future class
  final myFuture = Future((){
    print("Creating the future.");
    return 12;
  });
  print(myFuture); // because we are not using 'await' keyword it will return te future instance and not the completed value

  // Future with completed value:
  final myFuture2 = Future.value(12);
  // print value of 'myFuture2'
  print(await myFuture2); // because I want to wait until future is completed and print the return value we will use 'await' here

  // Future Completed with error (future with error):
  // final myFuture3 = Future.error("Error occured");
  // final myFuture4 = Future.error(Exception());

  // Using 'then' keyword to wait for future to complete & 'catch' to catch the error:
  Future<int>.delayed(Duration(seconds:3),()=>100).then((value)=>print(value)).catchError((error)=>print("Caught $error"),test:(err)=>err.runtimeType == String).whenComplete((){
    print("Future is complete");
  });
  // 'then' is the instance method on each future that we can use to register a callback for when the future complete with a value
  // 'catchError' works just like then, only it takes an error instead of a value and it executes if the Future completes with an error.
  // we can even give catchError a test method to check the error before invoking the callback.
  // 'whenComplete' is a method that takes a callback that will be invoked when the future completes, regardless of whether it completes with a value or an error.

  print("Last Line");
}

Future<String> getName() async { // because it is returning future i have to use 'async'
  // let's say that this function take time to return because it have to do some heavy work or it have to fetch data from network or database
  String name = "";
  Future.delayed(Duration(seconds: 3), (){ // If I will use 'await' keyword here then the like of execution will be 'Line 1' 'Line 2' 'Line 3'
    print("Line 2");
    name = "Roman Ojha";
  });
  return name; // currently we are only returning empty string because the future is not completed yet and we are not awaiting
}
