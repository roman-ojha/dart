class Animal{
  var color;
  void eat(){
    print("Eat!");
  }
}

class Dog extends Animal{ // Animal is a SUPER Class or BASE Class or PARENT Class 
// Dog is the SUB Class or CHILD Class
  var breed;
  void bark(){
    print("Bark!");
  }
}

class Cat extends Animal{ // Animal is a SUPER Class or BASE Class or PARENT Class 
// Cat is the SUB Class or CHILD Class
  var age;
  void meow(){
    print("Meow!");
  }
}

void main(){
  // Creating Dog object
  var dog = Dog();
  dog.breed="Labrador";
  dog.color="Black";
  print("${dog.breed} and ${dog.color}");
  dog.bark();
  dog.eat();

  // Creating Cat object
  var cat = Cat();
  cat.age="Labrador";
  cat.color="white";
  print("${cat.age} and ${cat.color}");
  cat.meow();
  cat.eat();

  // Creating Animal Object
  var animal=Animal();
  animal.color="Brown";
  print("${animal.color}");
  animal.eat();
}