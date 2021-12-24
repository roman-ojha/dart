/*
  -> Dart has special support for these data types
    1) Numbers (we don't have float and long in dart)
      -> int 
      -> double
    2) Strings
    3) Booleans
    4) Lists (Also known as Array)
    5) Maps 
    6) Runes (for expression unicode characters in a String)
    7) Symbols

NOTE: All the data types in dart are Objects
-> Therefore, values are by default null
*/

void main() {
  var age1 = 10; // alternative way
  // it is inferred as interger automatically
  var name1 = "Roman";
  print(age1);
  print(name1);

  // Number: int
  int age2 = 30;
  print(age2);

  int hexValue = 0xEADEBAEE;
  // we can also be able to assign hex value in int
  print(hexValue);

  // Number: double
  double percentage = 93.4;
  print(percentage);

  // Number: num
  num temp = 30.5; // num can take both 'int' or 'double'
  print(temp);

  double exponents = 1.42e5;
  // we can assign exponential value as well
  print(exponents);

  // String
  String name = "Roman";
  print(name);

  // Boolean
  bool isAlive = true;
  print(isAlive);

  // bool def; // default value is null
}
