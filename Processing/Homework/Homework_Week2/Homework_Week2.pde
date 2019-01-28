//Analisse Guadeloupe
//Week 2 Homework

float angle1 = 0;

void setup() {
  size(600,600);
  noStroke();
  rectMode(CENTER);
}

void draw() {
  background(135);
  fill(240,150);
  //rectangle one
  rect(mouseX, mouseY, width/4, height/4);
   angle1 -= 1;
  rotate(radians(angle1));
  rect(pmouseX , pmouseY, width/8, height/8);
}
