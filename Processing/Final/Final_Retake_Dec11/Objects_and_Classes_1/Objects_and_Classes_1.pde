Blob b1;
Blob b2;

void setup() {
  size(600, 600);
  noStroke();
  b1 = new Blob(100,100,150);
  b2 = new Blob(width/2,height/2,200);
}

void draw() {
  background(0);
  b1.display();
  b2.display();
}
