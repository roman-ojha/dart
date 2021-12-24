

void main()
{

  // For Loop

  // WAP to rind the even numbers between 1 to 10
  for(int i=0;i<=10;i++){
    if(i%2==0){
      print(i);
    }
  }

  // for ..in loop
  List planetList =["Mercury","venus","Earth","Mars"];
  for (String planet in planetList){
    print(planet);
  }

  planetList.forEach((element) { print(element);});
}