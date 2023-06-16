

void main(){
  findPerimeter1(4,2);

  int area=getArea(10, 5);
  print("The area is $area");
}


void findPerimeter1(int length,int breadth) => print("The periemeter is ${2*(length+breadth)}");


int getArea(int length, int breadth) => length*breadth; // you don't have to use return keyword if you are using fat arrow

// NOTE: in betweent fat arrow and ';' we can only have just one single one expression
  