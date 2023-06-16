void main(){
  var result= findVolume(2);
  print(result);

  var result1= findVolume(2, height: 5);
  print(result1);
  
}

int findVolume(int length,{int breadth=2,int height=10}){
  return length*breadth*height;
}