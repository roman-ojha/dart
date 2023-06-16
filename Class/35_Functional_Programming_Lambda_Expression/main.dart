/*
  # Lambda
    -> Function without a name
    -> Also known as anonymous function of lambda
    -> also called as Nameless function

  NOTE: A Function in Dart is an object
  int sum = 2; // Object
  String message="Hello"; // Object 
  Function AddNumber = // some value;
*/

void main(){
  // 1st way: 

  // Lambda expression
  (int a,int b){
  var sum=a+b;
  print(sum);
  };

  // Assign lambda to variable
  Function addTowNumber =(int a,int b){
                          var sum=a+b;
                          print(sum);
                          };
  var multiplyByFour=(int number){
                          return number*4;
                        };

  // calling the lambda function
  addTowNumber(2,4);
  print(multiplyByFour(5));

  // 2nd way: function Expression: Using short Hand syntax or Fat Arrow('=>')
  Function addNumber = (int a,int b) => print(a+b);
  var multiplyFour = (int number) => number*4;
  addNumber(1,2);
  print(multiplyFour(5));

}

//Normal Function
void addMyNumbers(int a,int b){
  var sum=a+b;
  print(sum);
}