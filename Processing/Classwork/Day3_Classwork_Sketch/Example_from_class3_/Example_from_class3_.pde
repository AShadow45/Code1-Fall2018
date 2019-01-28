void setup () {
  size(500,500);
}

void draw () {
  float myRandom = random(10,100);
  fill(random(0,255),random(0,255),random(0,255),200);
  noStroke();
  ellipse(random(0,width),random(0,height),myRandom,myRandom);
  
  
}
