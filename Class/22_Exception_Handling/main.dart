/*
  # handle Exceptions using:
    -> Try
    -> Cathch
    -> On
    -> Finally

  -> When normal flow of Program is disrupted and Application Crashes
  # Type of exception:
    1.	DefferedLoadException
      -> 	It is thrown when a deferred library fails to load.
    2.	FromatException
      -> 	It is the exception which is thrown
    3.	IntegerDivisionByZeroException
      -> 	It is thrown when number is divided by zero.
    4.	IOEException
      -> 	It is the base class of input-output related exception.
    5.	IsolateSpawnException
      -> 	It is thrown when an isolated cannot be created.
    6.	Timeout
      -> 	It is thrown when a schedule timeout happens while waiting for an async result.
*/

void main(){
    int result =12~/4;
    // here '~' means after porforming the calculation this is return in the form of integer 
    print(result);

  // CASE 1: When you know the exception to be thrown, use ON Clause
  try{

    int result1 =12~/0;
    // in this case we are dividing by 0 now application will crash
    // so for that we can handle this can of exception
    print(result1);
  }on IntegerDivisionByZeroException{
    //  if we know the which type of exception we will face then we will use 'on' rather then catch
    print("Cannot divide by zero");
  }


  // Catch Clause with Exception Object
  // CASE 2: When you do not know the exception use CATCH clause
    try{
      int result1 =12~/0;
    print(result1);
    }catch(e){
      print(e);
    }

  // Catch Clause with Exception Object and StackTrace Object
  // CASE 3: Using STACK TRACE to know the events occurred before Exception was thrown
    try{
      int result1 =12~/0;
    print(result1);
    }catch(e,s){
      print(e);
      print("STACK TRACE \n $s");
      // 's' have all the error occure 
    }

     // CASE 4: Wheter there is an Exception or not, Finally clause is always Executed
    try{
      int result1 =12~/3;
    print(result1);
    }catch(e){
      print(e);
    }finally{
      print("This is FINALLYA Clause and is always executed.");
      // this finaly will run no matter exception will occur of not
    }
}