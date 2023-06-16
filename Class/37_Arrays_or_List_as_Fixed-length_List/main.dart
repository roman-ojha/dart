/*
  -> in Dart, Array is known as List
  -> Order callection
    *) Element are order in sequence

  -> type of List:
    *) Fixed-length list
        -> length onece defined cannot be changed
    *) Growable list
        -> length is dynamic
*/

void main(){
  // List <int> var numberList=List(5);  // Fixed-Length list
  // but this way of implementation is depricated
  
  // New wey to make Fixed list
    var numberList = List<int>.filled(5, 0);
    
    numberList[0]=73;
    numberList[1]=64;
    numberList[3]=21;
    numberList[4]=12;

    // numberList.remove(2);        // Not supported in fixed-length List
    // numberList.removeAt(1);      // Not supported in fixed-length List
    // numberList.insert(2, 10);    // Not supported in fixed-length List
    // numberList.add(499);         // Not supported in fixed-length List

    numberList[0]=99; // update operation
    print(numberList);
    print(numberList[0]); 


    // Printing using for in loop
    for(int element in numberList){
      print(element);
    }

    // Printing using for each loop
    numberList.forEach((element) => print(element)); // Using Lambda

    // Printing using normal for loop
    for (int i=0;i<numberList.length;i++)
    {
      print(numberList[i]);
    }
}
