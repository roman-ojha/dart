/*
  *) Synchronous Programming:
    -> In Synchronous operations tasks are performed one at a time and only when one is completed, the following is unblocked. In other waords, you need to wait for a task to finish to move to the next one.
    -> by default dart support synchronous programming.
  *) Asynchronous Programming:
    -> In Asynchronous operations tasks are performed in parallel and are independent of each other. In other words, you don't need to wait for a task to finish to move to the next one.
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
  await getName(); // next line can get execute before this line
  print("Line 3");
}

Future<String> getName() async { // because it is returning future i have to use 'async'
  // let's say that this function take time to return because it have to do some heavy work or it have to fetch data from network or database
  String name = "";
  Future.delayed(Duration(seconds: 5), (){ // If I will use 'await' keyword here then the like of execution will be 'Line 1' 'Line 2' 'Line 3'
    name = "Roman Ojha";
    print("Line 2");
  });
  return name;
}
