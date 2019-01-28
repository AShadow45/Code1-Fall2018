Dot d1;
void setup(){
  size(600,600);
  d1 = new Dot(width/2,height/2);
}

void draw(){
  background(255);
  d1.display();
  d1.x = mouseX;
  d1.y = mouseY;
}
