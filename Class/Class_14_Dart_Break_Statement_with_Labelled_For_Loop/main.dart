void main(){
 // BREAK   Keyword

  for (int i=1;i<=3;i++){
    for(int j=1;j<=3;j++){
      print("$i $j");
      if(i==2&&j==2){
        break;
        // this will only break the one for loop 
      }
    }
  }


 // Using Labels

 outerLoop: for (int i=1;i<=3;i++){
    /*innerLoop:*/ for(int j=1;j<=3;j++){
      print("$i $j");
      if(i==2&&j==2){
        break outerLoop; 
        // now here we can break the outer loop as well
      }
    
    }
  }
}