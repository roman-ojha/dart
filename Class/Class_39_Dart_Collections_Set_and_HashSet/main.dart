/*
  # Set:
    -> Unordered collection of unique items
        *) it does nto contain duplicate elements

    -> you cannot get elements by Index, since the items are unordered

    # HeshSet:
      -> Implementation of unordered set
      -> It is based on hash-talbe based Set implementation
*/

void main(){

  // Method 1: From a List
  Set<String> countries =Set.from(["USA","INDIA","CHINA"]); 
  print(countries);

  // Method 2: Using Constructoe
  // Set<int> numberSet = Set();
  var numberSet = Set();
  numberSet.add(12); // insert Operation
  numberSet.add(13);
  numberSet.add(14);
  numberSet.add(14); // Duplicate entries are ignored
  print(numberSet.contains(12));
  numberSet.remove(12);
  print(numberSet.isEmpty);
  print(numberSet.length);
  numberSet.clear();

  // Printing Set using for in loop
  for(int element in numberSet){
    print(element);
  }
  // Printing using for each loop
  numberSet.forEach((element) => print(element));

  // Normal forloop did not work for set

}