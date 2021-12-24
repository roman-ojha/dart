void main(){
  // CASE 5: Custom Exception
  try{
  depositMoney(-200);
  }on DepositException{
    print("Deposit Exception occure");
  }

  try{
  depositMoney(-200);
  }catch(e){
    print(e);
  }finally{
    // Code
  }
}

class DepositException implements Exception{
  // when we are creating the custom exception class we have to implements the interface of Exception
  String errorMessage(){
    return "You cannot enter amount less the 0";
  }
}

void depositMoney(int amount){
  if(amount<0){
    throw new DepositException();
  }
}
