/*
  -> closure is a special function
  -> Within a closure you can mutate (modify) the values of varables present in the parent scope
  -> in Java 8, you are not allowed to modify parent scope variables
*/

void main(){
  // Definition 1:
  // A closure is a function that ha access to the parent scope, even after the scope has closed

  String message ="Dar is good";

  Function showMessage=(){
    message="Dart is awesome"; // redefining the variable
    print(message);
    return print;
  };
  showMessage();

  // Definition 2:
  // A Closure is a function object that has access to variables in its lexical scope,
  // even when the function is used outside of its original scope

  Function talk=(){
    String msg="Hi";
    Function say=(){
      msg="Hello";
      print(msg);
    };
    return say;
  };
  var speck=talk();
  speck(); // talk()  // say()  // print(msg) // output: "Hello"
}

