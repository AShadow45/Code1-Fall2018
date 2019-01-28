//Analisse Guadeloupe
//Week 3 Homework
int angle = 0;

void setup() {
  size(500,500);
  background(255);
  noStroke();
  //rectMode(CENTER);
}

void draw(){
  background(255);
  fill(255,0,255,200);
  star(width/2,height/2,0,255,255);
}

void star(float posX, float posY, float r, float g, float b) {
  fill(r,g,b,100);
  pushMatrix();
  translate(posX,posY);
  rotate(radians(angle));
  //rect(0,0,100,100);
  ellipse(0,0,10,10);
  triangle(-75, 40, 0, -85,75,40);
  triangle(-75, -40, 0, 85,75,-40);
  //triangle( width/2, height/8,width/4, height*3/4, width*3/4,height/4);
  //rotate(radians(150));
  //triangle(width*3/4,height/4, width/2, height/8,width/4, height*3/4);
  popMatrix();
  
  angle++;
}
