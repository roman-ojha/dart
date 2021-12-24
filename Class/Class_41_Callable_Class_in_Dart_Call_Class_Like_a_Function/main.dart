/*
  # Callable Class
    -> When Dart class is caled like a function
      -> Implement call() function
*/

class Person{
  String call(int age, String name){
    return "The name of the person is $name and age is $age";
  }
}

void main(){
  var personOne=Person();
  var msg=personOne.call(25,"Roman");
  print(msg);
}