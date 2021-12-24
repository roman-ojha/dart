
class Student{
  var name; // Instance variable
  // name have it's own getter and setter in default

  // var percentage; // Instance variable with default Getter and Setter
  // no need of 'var percentage' becuase we just have in Setter

  var _percent; // Private Instance Variable for its own library
  // in dart we don't have modifier like pirvate, public and protected
  // but if we will use '_' in the variable then it will going to be private at it's own library

  // Setter for percentage
  void set percentage(double marksSecured){ // Instance variable with Custom Setter
    _percent= (marksSecured/500)*100;
  }

  // Getter for percentage
  double get percentage{
    return _percent;
  }

}

void main(){
  var student1=Student();
  student1.name="Roman"; // Calling default Setter to the value
  print(student1.name); // Calling default Getter to get value

  student1.percentage = 438;
  // go as student.percentage(438);
  print(student1.percentage);
}