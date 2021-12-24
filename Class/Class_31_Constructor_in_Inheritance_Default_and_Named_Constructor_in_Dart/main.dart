class Animal{
  var color;
  Animal(var color){
    this.color=color;
    print("Animal class constructor");
  }

  Animal.myAnimalNamedConstructor(var color){
    this.color=color;
    print("This is Animal Named constructor");
  }

}

class Dog extends Animal{ 
  var breed;

  // Inheritance with Default constructor and parameterized constructor

  // Dog():super{
  //  print("Default constructor");
  // }

  // Dog(var breed):super("Black"){
  //   print("Dog class constructor");
  // }

   Dog(var breed,var color):super(color){
     // we can also be able to call the Named constructor from here as well
     this.breed=breed;
    print("Dog class constructor");
  }

  // Dog.myNamedConstructor(){ 
  //   // to make this Named constructor the super class construct should always have 0 argument constructor if don't have then you have to use super keyword
  //   print("Dog class Named Constructor");
  // }

  Dog.myAnotherNamedConstructor(var breed, var color):super(color){
    this.breed=breed;
      print("Dog class Named Constructor");
  }

  Dog.myAnother2NamedConstructor(var breed, var color):super.myAnimalNamedConstructor(color){
    this.breed=breed;
      print("Dog class Named Constructor");
  }
  printdata(){
    // just to remove the problem in vs code
  }
}


void main(){
  var dog1=Dog("Labrador","Black");
  var dog2=Dog("Pug","Brown");
  var dog3=Dog.myAnotherNamedConstructor("Gernam Shepherd","White");
  var dog4=Dog.myAnother2NamedConstructor("Gernam Shepherd","White");
  dog1.printdata();
  dog2.printdata();
  dog3.printdata();
  dog4.printdata();
}

/*
  NOTE:
    -> By default, a constructor in a subclass calls the supterclass's no-argument constructor.
    -> Parent class constructor is always called before child class constructor
    -> If defautl constructo is missing in Parent class, then you must manually call one of the constructors in super class
*/