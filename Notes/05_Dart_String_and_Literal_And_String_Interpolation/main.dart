void main(){
  // Literals
    /*
      1) True (boolean)
      2) 2 (number,int)
      3) "Roman" (String)
      4) 4.5 (Number,int)
    */
  var bol=true;
  var num1=2;
  var str="Roman";
  var flt=4.5;


  // Various way to define String literal in Dart
  String s1='Single'; // using Single quote
  String s2 ="Double"; // using double quote
  String s3 ='It\'s easy'; // excape charecter
  String s4 = "It's easy";
  String s5 = "It\"s easy";

  String s6='This is going to be a very long String.'+
            'This is just a sample String demo in Dart Programming Language';
print(s6);
print("$bol $num1 $str $flt $s1 $s2 $s3 $s4 $s5");

  // another say of concat 
  String s7='This is going to be a very long String.'
            'This is just a sample String demo in Dart Programming Language';

  print(s7);   

  // String Interpolation : Use ["My name is $name"] instead of ["My name is "+name]
  String name="roman";
  String message="My name is $name";
  print("Message: $message");

  print("The number of characters in String Kevin is ${name.length.toString()} "+ name.length.toString());
  // here name.length is returning the int value which is nto the type 'Stirng' to concat
  // to to work it out we have to use .toString();


  int l=20;
  int b=10;
  print("This sum of $l and $b is ${l+b}");
  print("The area of rectabgle with length is $l and breadth is $b is ${l*b}");
}