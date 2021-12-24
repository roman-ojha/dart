/*
  -> If you never want to change a value then use 'final' and 'const' keywords
      *) final name = "Roman";
      *) const PI = 3.14;

  -> Difference between final and const
    *) 'final' variable can only be set once and it is intialized when accessed. (memory allocation)
    *) 'const' variable is implicityly final but it is a compile-time constant
          -> i.e it is initialized during compilation
          -> so it will consumed memory
  -> Instance variable can be final but cannot be const.
    *) if you want a Constant at class level then make it 'static const'
*/

void main(){
    // final keyword
      final cityName="Kathmandu";
      //cityName ="pokhara"; // will through an error because it is constant
      print(cityName);

      final String cityName1="Kathmandu";// we can also be able to do this

      final String countryName ="Nepal";


      // const keyword
      const PI =3.14;
      const double PII =3.14;
      const double gravity = 9.8;
      print("$cityName1 $countryName $PI $PII $gravity");
    
}

class Circle{
  final color ="Red";
  // const PI=3.14; 
  // inside the class we can't use 'const' we have to use 'static const'
  static const PI =3.14;
}