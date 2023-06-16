

void main(){
  // Conditional Expressions

  // 1. condition ? exp1 : exp2
  // if condition is true , evaluates expr1 (and return its value);
  // otherwise, evaluates and return the value of expr2.

  int a=2;
  int b=3;

  int smallNumber;

  if (a<b){
    print("$a is smaller");
  }
  else{
    print("$b is smaller");
  }

  a<b ? print("$a is smaller") : print("$b is smaller");

  if (a<b){
    smallNumber=a;
  }
  else{
    smallNumber=b;
  }
  print("$smallNumber is smaller");

  smallNumber = a<b ? a : b; // we can be able to do this in conditional statement as well
  print("$smallNumber is smaller");

  int smallNumberr= a<b ? a : b;
  print("$smallNumberr is smaller");

  // 2. exp1 ?? exp2
  // if expr1 is non-null, return tis value
  // otherwise, evaluates and return the value of expr2.
  var name = null;
  String nameToPring = name ?? "Guest User";
  print(nameToPring);

}