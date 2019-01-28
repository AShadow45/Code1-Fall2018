class Walker{
  float x;
  float y;
  int s;
  
  Walker(float x0, float y0){
    x = x0;
    y = y0;
    //hard coding default values
    //x = width/2;
    //y = height/2;
    s = 10;
  }
  
  void display(){
 
  ellipse(x,y,s,s);
}

void walk() {
  float randX = random(-5,5);
  float randY = random(-5,5);
  
  x+=randX;
  y+=randY;
}
}
