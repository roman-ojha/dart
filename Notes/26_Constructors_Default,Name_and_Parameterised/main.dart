/*
  -> Constructors :
    *) Default constructor 
    *) Parameterized constructor
    *) Named constructor
    *) Constant constructor
*/

class Student {
  int id = -1;
  String name = "";

  // Default Constructor :
  // Student(){
  //   // Default constructor
  //   print("This is the default constructor");
  // }

  // Parameterized constructor :
  // Student(int _id,String name){
  //   id=_id;
  //   this.name=name;
  // }

  Student(this.id, this.name);
  // we can also be able to do this to assign the value to instance variable

  // Named Constructor or Custom Constructor
  Student.myCustomConstructor() {
    print("This is my custom constructor");
  }

  // parameterized Named constructor
  Student.myAnothercustomContructor(this.id, this.name);

  // NOTE: we can have multiple named constructor but we can't have default and parameterized construct at the same time

  void study() {
    print("${this.name} is now studying");
  }

  void sleep() {
    print("${this.name} is now sleeping");
  }

  void local() {
    // int marks = 123; // local variable;
  }
}

void main() {
  var student1 = new Student(23, "Roman");
  // student1 is a refrence variable
  student1.study();
  student1.sleep();

  var student2 = Student(45, "Ojha");
  student2.study();
  student2.sleep();

  var student3 = Student
      .myCustomConstructor(); // One Object, student3 is a refrence variable
  student3.id = 54;
  student3.name = "Razz";
  student3.study();
  student3.sleep();

  var student4 = Student.myAnothercustomContructor(60, "Razz Roman");
  print("${student4.id} and ${student4.name}");
}
