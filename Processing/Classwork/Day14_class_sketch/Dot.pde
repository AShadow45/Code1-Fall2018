class Dot {
  int x,y,d;
  
  Dot(int x_, int y_){
    x = x_;
    y = y_;
    d = 10;
  }
  
  void display(){
    noStroke();
    fill(255,0,0);
    ellipse(x,y,d,d);
  }
}
