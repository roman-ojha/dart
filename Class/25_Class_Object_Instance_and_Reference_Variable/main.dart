// Define States (properties) and behavior of a Student

class Student{
  int id =-1;       // Instance of Field Variable ,default value is null
  String name ="";  // Instance of Field Variable ,default value is null

  void study(){
      print("${this.name} is now studying");
  }
  void sleep(){
      print("${this.name} is now sleeping");
  }

}


void main(){
  var student1=new Student(); // you can do this to create an object
  // One Object, student1 is refrence variable
  student1.id=23;
  student1.name="Roman";
  print("${student1.id} and ${student1.name}");
  student1.study();
  student1.sleep();

  var student2=Student(); // you can also excluded the new keyword 
  // One Object, student1 is refrence variable
  student2.id=45;
  student2.name="Ojha";
  print("${student2.id} and ${student2.name}");
  student2.study();
  student2.sleep();
}
