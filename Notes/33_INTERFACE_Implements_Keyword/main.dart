// In dart we don't have anything like interface unlike in java and kotlin

class Romote{

  void volumeUp(){
    print("______Volume Up from remote______");
  }
  void volumeDown(){
    print("______Volume Down from Remote______");
  }
}

class AnotherClass{
  void justAnotherMehod(){
    //Code
  } 
}

class Television implements Romote, AnotherClass{
   // now after using 'implements' Remote and AnotherClass will act as the interface
   // but if we will use 'extends' then you can only inherit from one class not from two
  void volumeUp(){
    // here we can't call super method 'volumeUp' from here because right now Television is act as the interface
    print("______Volume Up from Television______");
  }
  void volumeDown(){
    print("______Volume Down from Television______");
  }

  void justAnotherMehod(){
    // Override code of AnotherClass Interface
  } 
}

void main(){
  var tv=Television();
  tv.volumeUp();
  tv.volumeDown();
}

/*
  NOTE:
    -> Dart does not have any special syntax to declare INTERFACE
    -> An INTERFACE in Dart is a Normal Class
    -> An INTERFACE is used when you can need concret implementation of all of its function within it's sub class
      *) It is mandatory to override all methods in the implementing class
    -> You can implement multiple classes but
      *) You cannot extend mulitple classes during inheritance
*/