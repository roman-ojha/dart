/*
  # Inheritance
    -> Inheritance is a mechanism in which one object acquires properties of its parent class Object
    -> Super class of any class is Object
      *) Provides default implementation of:
        -> toString(), return the String representation of the object
        -> 'hashCode' getter, return the Hash Code of an object
        -> 'operator==', to compare two objects

  # Advantage of Inheritance:
    *) Code reusability
    *) Method Overriding
    *) Cleaner code: no repetition

  # Type of inheritance:
    NOTE: All the class in Dart is inherit form the common Class of Object
    1) Single inheritance
          Object
             |
          Class A
             |
          Class B

    2) Multi-level inheritance
           Object
             |
          Class A
            |
          Class B
            |
          Class C

    3) Hierarchial inheritance
            Object
             |
          Class A
           /   \
         /      \
      Class B  Class C
*/

class Animal{
  var color;
  void eat(){}
}

class Dog extends Animal{ // Animal is a SUPER Class or BASE Class or PARENT Class 
// Dog is the SUB Class or CHILD Class
  var breed;
  void bark(){}
}

class Cat extends Animal{ // Animal is a SUPER Class or BASE Class or PARENT Class 
// Cat is the SUB Class or CHILD Class
  var age;
  void meow(){}
}

void main(){

}