class Circle{
  var inst=12; // Instance variable

  static double PI = 3.14; // Static variable

  static const double PII=3.14;
  // now usig 'contst' it can't be able to change after

  static void calculateArea(){ // Static method
    print("Some code to calculate area fo Circle");
    // Instance method can't be able to access by the static method
    // Instance variable can't be able to access by the static method
    // You can't use 'this' keyword inside the static method
  }

  void myNormalFunction(){
    Circle.calculateArea();
    // but we can call the static function inside the normal function
    print(Circle.PI);
    print(Circle.PII);

    // because we are inside the Circle we can escepe the Circle
    calculateArea();
    print(PI);
    print(PII);
  }
}


void main(){
  print(Circle.PI);
  // we can directly access static variable and method without making the object
  // we cann't access the static variable by using the object
  Circle.calculateArea();

  var circle =Circle();
  // circle.PI; // ERROR 
  // circle.calculateArea(); // ERROR

  circle.inst=12; // take 4 byte memroy

  var circle2 =Circle();
  circle2.inst=12; // take 4 byte memroy
  // total 8 byte of memory for to access the same value

  Circle.PI=3.14; // take 4 byte memory for all the object
  Circle.PI=3.14; // No more memory will be allocated

  circle.myNormalFunction();
}

/*
  NOTE:
    -> Static Variables are also known as Class variables
    -> Static Methods are also known as Class Methods
    -> Static variables are lazily initialized
        *) they are not initialized until they are used in program
        *) So they consume memroy only when they are used
    -> Static methods has nothing to do with class object or instance
        *) You cann't use 'this' keyword within a Static mehtod
    -> From a Static Method:
        *) You can only access Static Method and Static Variables
        *) But you cannot access Normal Instance Variables and mehtods of the class 
*/