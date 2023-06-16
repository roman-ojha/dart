/*
  # Parameters
    1) Required
    2) Optional
        a) Positional
        b) Named
        c) Default
*/


void main(){
  printCities("Nuew York", "New Detail" ,"Sydney");
  printCountries("Usa", "India");
  printCountries()
}

// Required Parameters
void printCities(String name1, String name2,String name3){
  print("Name 1 is $name1");
  print("Name 2 is $name2");
  print("Name 3 is $name3");
}

// Optional Positional Parameters
void printCountries(String name1,[var name2,var name3]){
  // now in here by putting in [] it will going to be the optional
  print("Name 1 is $name1");
  print("Name 2 is $name2");
  print("Name 3 is $name3");
}
