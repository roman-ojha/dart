/*
  # Higer-Order Function
    -> Can accept function as a parameter
    -> Can return a function
    -> or Can do both thing
*/

void main(){
  // Example One: Passing Function to higher-order Function
  Function addNumbers=(a,b) =>print(a+b);
  someOtherFunction("Hello", addNumbers);

  // Exaple Two: Reciving Function from Higher-Order Function
  var myFunction=taskToPerform();
  print(myFunction(10)); // mutiplyFour(10) // number*4 // 10*4 // Output: 40

}

// Example One: Accepts function as parameter
void someOtherFunction(String message, Function myFunction){ // Higher-Order Function

  print(message);
  myFunction(2,4);  // addNumbers(2,4) // print(a+b)  // print(2+4)  // Output: 6

}
// Example two: Return a function
Function taskToPerform(){
  Function multiplyFour =(int number)=>number*4;
  return multiplyFour;
}