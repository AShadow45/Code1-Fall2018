//Analisse Guadeloupe
//November 27, 2018 
//Midterm Retake

//------------------------------------------------------------------------------------
//Conditionals One

//float d = 100;
//float incr = 5;
//float size = 10;

//void setup() {
//  size(600, 600);
//}

//void draw() {
//  background(150);
//  d += incr; 
//   if (d <= 0 + size){
//   d += incr;
// }
//  if (d >= width - size || d>=height - size) {
//   d-= incr;
//   incr *= -1;
// } 
//  ellipse(width/2, height/2, d, d);
//}

//------------------------------------------------------------------------------------
//Conditionals Two [done]

//int xPos;
//int incr = 5;
//int d = 150;
//int r = d/2;

//void setup(){
//  background(0);
//  size(600,600);
//  xPos = width/2;
//}

//void draw(){
//  background(0);
//  ellipse(xPos,height/2,d,d);
//  xPos += incr;
  
//   if (xPos >= (width - r)) {
//    incr *= -1;
//   } 
//   if (xPos <= r) {
//    incr++;
//  }
//}

//------------------------------------------------------------------------------------
//Conditionals Three [done]

//void setup() {
//  size(600, 600);
//}

//void draw() {
//  background(150);
//  float dist = dist(width/2, height/2, mouseX,mouseY);
//  if (mousePressed && dist <100) {
//    fill(255);
//  } else {
//    fill(150);
//  }

//  ellipse(width/2, height/2, 200, 200);
//}

//------------------------------------------------------------------------------------
//Conditionals Four [done]

//void setup() {
//  size(600, 600);
//  noStroke();
//}

//void draw() {
//  if (mouseX < width/2 && mouseY < height/2) {
//    fill(255);
//  } else {
//    fill(229, 107, 107);
//  }
//  rect(0, 0, width/2, height/2);

//  if (mouseX < width/2 && mouseY > height/2) {
//    fill(255);
//  } else {
//    fill(107, 229, 107);
//  }
//  rect(0, height/2, width/2, height/2);
  
//  if (mouseX > width/2 && mouseY < height/2) {
//    fill(255);
//  } else {
//    fill(107,107,229);
//  }
//  rect(width/2, 0, width/2, height/2);
  
//  if (mouseX > width/2 && mouseY > height/2) {
//    fill(255);
//  } else {
//    fill(240,250,61);
//  }
//  rect(width/2, height/2, width/2, height/2);
//}

//------------------------------------------------------------------------------------
//Boolean [done]

//float bgColor = 0;
//boolean on = false;

//void setup() {
//  size(600, 600);
//}

//void draw() {
//  background(bgColor);

//  if (on ) {
//    bgColor = 255;
//  } else {
//    bgColor = 0; 
//  }
//}

//void mousePressed() {
//  on = !on;
//}

//------------------------------------------------------------------------------------
//Random [done]

//void setup() {
//  size(600, 600);
//  background(50);
//  fill(0);
//  ellipse(width/2, height/2, 300, 300);
//}

//void draw() {
//  float x = random(0, width);
//  float y = random(0, height); 
//  float dist = dist(x,y,width/2,height/2);
//  if (dist < 150){
//    stroke(255);
//    point(x, y); 
//  }
//}

//------------------------------------------------------------------------------------
//Loop [done]

//void setup() {
//  size(600, 600);
//}

//void draw() {
//  for (int i = 1; i < 10; i++) {
//    for (int j = 1; j < 10; j++) {
//      ellipse(i * 60 , j * 60, 50, 50);
//    }
//  }
//}

//------------------------------------------------------------------------------------
//Map [done]

//void setup() {
//  size(600, 600);
//  for (int i = 0; i < width; i++) {
//    for (int j = 0; j < height; j++) {
//      float r = map(i, 0, width, 0, width/2);
//      float g = map(j, 0, height, 0, height/2);
//      stroke(r, g, 175);
//      point(i, j);
//    }
//  }
//}

//------------------------------------------------------------------------------------
//Scope [done]

//int yPosition = width/2;

//void setup() {
//  size(600, 600);
//}

//void draw() {
//  ellipse(width/2, yPosition, 100, 100);

//  if (yPosition > height) {
//    yPosition = 0;
//  } else {
//    yPosition+=10;
//  }
//}

//------------------------------------------------------------------------------------
//Transform One [done]

//void setup() {
//  size(600, 600);
//  rectMode(CENTER);
//}

//void draw() {
//  background(80);
//  noStroke();
//  rect(mouseX, mouseY, 100, 100);
//  translate(mouseX, mouseY);
//}

//------------------------------------------------------------------------------------
//Transform Two [done]

//float angle1 = 0;
//float angle2 = 0;

//void setup() {
//  size(600, 600);
//  rectMode(CENTER);
//}

//void draw() {
//  background(150);
//  fill(40);
//  stroke(220);

//  angle1 += 1;
//  angle2 -= 2;

//  pushMatrix();
//  translate(300, 300);
//  rotate(radians(angle1));
//  rect(0, 0, 100, 100);
//  translate(150, 150);
//  rotate(radians(angle2));
//  rect(0, 0, 50, 50);
//  popMatrix();  

//}

//------------------------------------------------------------------------------------
//Arrays One [done]

//int num =100;
//float [] pos = new float [num];

//void setup() {
//  size(600, 600);
//}

//void draw() {
//  //background(240);
//  for (int i = 0; i < num; i++) {
//    ellipse(width/2, pos[i], 50, 50);
//    pos[i]+= 5;
//  }
//}

//------------------------------------------------------------------------------------
//Arrays Two [done]

//float[] pos = new float[10];

//void setup() {
//  size(600, 600);
//}

//void draw() {
//  background(240);
//  for (int i = pos.length; i >= 0; i--) {
//    ellipse(width/2, height/2, i*60, i*60);
//  }
//}

//------------------------------------------------------------------------------------
//Scope EC [done]

//void setup() {
//  size(600, 600);
//  noStroke();
//}

//void draw() {
//  background(150);
//  int x = 15;
//  for (int i = 0; i < 10; i++) {
//    rect(x, 150, 30, 300);
//    x += 60;
//  }
//}

//------------------------------------------------------------------------------------
// Map EC [done]

//float angle =0;

//void setup() {
//  size(600, 600);
//  rectMode(CENTER);
//  noStroke();
//}

//void draw() {
//  background(50);
//  translate(width/2, height/2);
//  rotate(radians(mouseX));
//  triangle(0, -100, 50, 100, -50, 100);
//}
