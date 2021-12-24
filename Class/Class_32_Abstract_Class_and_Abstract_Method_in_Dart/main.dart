
// Making Abstract class
abstract class Shape{
  // we can't be able to make an object of this class now
  var x;
  var y;
  void draw(); // Abstract Method
  // NOTE: Abstract method can only exist with in the abstract class

  void myNormalFunction(){ // Normal Function
    // Some code
  }
}

class Rectangle extends Shape{
  // now it is mendetory to override the the Abstract Method of the super class
  void draw(){
    print("Drawing rectangle.....");
  }

  // no compalsary to override the super class Normal function
}

class Circle extends Shape{
  void draw(){
    print("Drawing Circle.....");
  }
}

void main(){
  var rectangle=Rectangle();
  rectangle.draw();
  var circle=Circle();
  circle.draw();
}

/*
  NOTE:
  # Abstract Method
    -> To make a method abstract, use semicolon(;) instade of method body
    -> Abstract method can only exist with Abstract class
    -> You need to override Abstract methods in sub-class
  # Abstract Class
    -> Use abstract keyword to declare Abstract Class
    -> Abstract class can have Abstract Methods, Normal Methods and Instance variables as well
    -> The Abstract Class cannot be instantiated, you cannot create objects
*/