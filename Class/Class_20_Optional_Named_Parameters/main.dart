void main() {
  findVolume(10, 5, 20);

  // now while passing argument we can spacify :
  findVolume1(10, breadth: 5, height: 20);

  // altering sequence:
  findVolume2(10, height: 20, breadth: 5);
}

// Required Parameters
void findVolume(int length, int breadth, int height) {
  print("Volume is ${length * breadth * height}");
}

// Named parameters
void findVolume1(int length, {var breadth, var height}) {
  print("Volume is ${length * breadth * height}");
}

void findVolume2(int length, {required var breadth, var height}) {
  // here by using required the 'breadth' has to be pass
  print("Volume is ${length * breadth * height}");
}
