void main(){
  // CONTINUE Keyword
  for (int i=1;i<=10;i++){
    if(i%2==0){
      continue;
    }
    print(i);
  }

  for(int i=1;i<=3;i++){
      for(int j=1;i<=3;i++){
        if(i==2&&j==2){
          continue;
        }
        print("$i $j");
      }
    }

  // Using Labels
    outerLoop: for(int i=1;i<=3;i++){
      /*myInnerLoop:*/ for(int j=1;i<=3;i++){
        if(i==2&&j==2){
          continue outerLoop;
        }
        print("$i $j");
      }
    }
}