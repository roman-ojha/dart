/*
  # Map:
    -> it is unordered Collection of Key-value pair
    -> key-value can be of any object type
        *) Each Key in a map should be unique
        *) The value can be repeated
    -> Commonly called as hash or dictionary
    -> Size of map is not fixed, it can increase of decrease as per the number of elements
    # HasMap:
      -> Implementation of Map
      -> Based on hash-table
*/

void main(){
  // Method 1: Using Constructor

  Map<String,String> fruits=Map();
  // Map <'typeof key','typeof value'>

  var fruits1 = Map(); // another way 
  fruits1[""]="";

  fruits["apple"] ="red";
  // fruits[<key>] = <value>;
  fruits["banana"] = "Yellow";
  fruits["guava"] ="Green";

  print(fruits.containsKey("apple"));
  fruits.update("apple", (value) => "green"); // upgrade Operation
  fruits.remove("apple"); // remove Key it's value and return the value
  print(fruits.isEmpty); // return ture if the Map is empty
  print(fruits.length); // return number of element in Map
  fruits.clear();  // delete all element


  print(fruits["apple"]); // to get the value

  for(var key in fruits.keys){ // Print all keys
    print(key);
  }

  for(String value in fruits.values){ // Print all value
    print(value);
  }

  fruits.forEach((key, value) => print("key: $key and value: $value"));


  // Method 2: Using Literal
    Map<String,int> countryDialingCode={
      "USA":1,
      "INDIA":91,
      "PAKISTAN":92,
    };
    print(countryDialingCode);

  // Creating Object
    var countryDialingCode1={
       "USA":1,
      "INDIA":91,
      "PAKISTAN":92,
      977:"NEPAL",
    };

    print(countryDialingCode1);
}

