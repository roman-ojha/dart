void main(){
  // growable List
    var growableList = [1,70];
    growableList.add(499);
    growableList.add(12);
    growableList[0]=99; // update Operation
    growableList.remove(12); // Delete Operation
    growableList.add(80);
    growableList.removeAt(1); // to remove at index
    growableList.insert(1, 10); // to inser the element at the index

    // Printing using for in loop
    for(int element in growableList){
      print(element);
    }
}