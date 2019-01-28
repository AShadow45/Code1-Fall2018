//int myNum = 5;
//String myName = "Analisse";
//int rectSize;

void setup () {
  size(500,500);
  background(255);
  noStroke();
  //fill(0,255,255,100);
  //rectSize = width;
  ////determine how often the draw function runs
  ////per second (freq)
  //frameRate(10);
  
}

void draw () {
  background(255);
  //call function
  fill(0,255,255,100);
  flower(width/2,height/2,0,255,255);
  //fill(255,255,0,100);
  //flower(100,100);
  //flower(random(width), random(height), random(255), random(255), random (255));
  
 //ellipse(width/2,height/2,rectSize,rectSize);
 //rectSize -= 10;
 
 //moving the canvas instead of the shape
 //rect(100,100,100,100);
 //translate(0,100);
 //rect(100,100,100,100);
 //translate(100,0);
 //rect(100,100,100,100);
 //translate(0,-100);
 //rect(100,100,100,100);
 
 //rotating the canvas instead of the shape
 //rect(100,100,100,100);
 //rotate(radians(45));
 //rect(100,100,100,100);
 
 //rect(width/2,height/2,100,100);
 //translate(width/2,height/2);
 //rotate(radians(45));
 //rect(0,0,100,100);
 
}
//define function
void flower(float posX, float posY, float r, float g, float b) {
  fill(r,g,b,100);
  pushMatrix();
  translate(posX,posY);
  ellipse(0,0,50,50);
  ellipse(0,-50,25,100);
  ellipse(0,50,25,100);
  rotate(radians(90));
  ellipse(0,-50,25,100);
  ellipse(0,50,25,100);
  rotate(radians(45));
  ellipse(0,-50,25,100);
  ellipse(0,50,25,100);
  rotate(radians(90));
  ellipse(0,-50,25,100);
  ellipse(0,50,25,100);
  popMatrix();
}
