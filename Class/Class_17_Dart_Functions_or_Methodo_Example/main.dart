

void main(){

  // calling the function
  findPerimeter();
  findPerimeter1(4,2);

  int area=getArea(10, 5);
  print("The area is $area");
}
// initializing and definning the function
void findPerimeter(){
  int length = 4;
  int breadth =2;

  int parimeter =2*(length+breadth);
  print("The periemeter is $parimeter");
}

void findPerimeter1(int length,int breadth){
  int parimeter =2*(length+breadth);
  print("The periemeter is $parimeter");
}

int getArea(int length, int breadth){
  int area=length*breadth;
  return area;
}