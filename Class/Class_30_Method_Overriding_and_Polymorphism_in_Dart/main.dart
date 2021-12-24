class Animal{
  var color ="brown";
  void eat(){
    print("Animal is eating !");
  }
}

class Dog extends Animal{ 
  var breed;

  // overriding the variable
  var color="Black";
  
  void bark(){
    print("Bark!");
  }

  // Method overriding :
  // should match of the parent class method
  void eat(){
    // to call the parent class method
    super.eat();
    print("Dog is eating !");
  }
}


void main(){
  var dog=Dog();
  dog.eat();
  print(dog.color);
}