//Analisse Midterm October 23, 2018
//Conditionals 1 [done]

//float d = 100;
//float incr = 5;
//boolean shrink = true;

//void setup() {
//  size(600,600);
//}

//void draw() {
//  background(150);
//  ellipse(width/2,height/2,d,d);
  
//  d += incr;
  
//  if (d >= height){
//    d = -1*incr;
//    shrink = true;
//  } 
//  else if (d <= 0){
//     d += incr;
//  }

//}

//-----------------------------------------------------------------------------------
//Conditionals 2 [done]

//int xPos;
//int incr = 5;
//int d = 150;
//int r = d/2;

//void setup() {
//  background(0);
//  size(600,600);
//  xPos = width/2;
//}

//void draw() {
//  background(0);
//  ellipse(xPos,height/2,d,d);
//  xPos += incr;
  
//  if (xPos >= (width-r)) {
//    xPos =  r;
//  } else if (xPos <= r) {
//    xPos += incr;
//  }
  
//}

//-----------------------------------------------------------------------------------
//Conditonals 3 [incomplete]

//void setup() {
//  size(600,600);
//}

//void draw() {
//  background(150);
//  if(mousePressed) {
//    fill(255);
//    //dist(width/2,height/2,200,200);
//  }
//  else {
//    fill (150);
//  }
  
//  ellipse(width/2,height/2,200,200);
//}

//--------------------------------------------------------------------------------
//Conditonals 4 [done]

//void setup() {
//  size(600,600);
//  noStroke();
//}

//void draw() {
//  //top left
//  if(mouseX < width/2 &&  mouseY < height/2){
//    fill(255);
//  }else {
//    fill(229,107,107);
//  }
  
//  rect(0,0,width/2,height/2);
  
//  //bottom left
//  if (mouseX < width/2 && mouseY > height/2){
//    fill(255);
//  }else {
//    fill(107,229,107); 
//  }
  
//  rect(0,height/2,width/2,height/2);
  
//  //top right
//   if(mouseX > width/2 &&  mouseY < height/2){
//    fill(255);
//  }else {
//    fill(107,107,229);
//  }
  
//  rect(width/2,0,width/2,height/2);
  
//  //bottom right
//  if (mouseX > width/2 && mouseY > height/2){
//    fill(255);
//  }else {
//    fill(248, 255, 61); 
//  }
  
//  rect(width/2,height/2,width/2,height/2);
//}

//-----------------------------------------------------------------------------------
//Boolean [done]

//float bgColor = 0;
//boolean on = false;

//void setup() {
//  size(600,600);
//}

//void draw(){
//  background(bgColor);

//  if (on) {
//    bgColor = 255;
//  } else {
//    bgColor = 0;
//  }
//}

//void mousePressed() {
// on = true;
   
//}

//-----------------------------------------------------------------------------------
//Random [done]

//  void setup() {
//  size(600, 600);
//  background(50);
//  fill(0);
//  ellipse(width/2, height/2, 300, 300);
//}

//void draw() {
  
//   //dist(width/2, height/2, 300, 300);
//  float x = random(width/4, width*3/4);
//  float y = random(height/4, height*3/4);
//  stroke(255);
//  point(x, y);
//}

//-----------------------------------------------------------------------------------
//Loops [imcomplete]

//void setup() {
//  size(600, 600);
//}

//void draw() {
//  for (int i = 1; i < 10; i++) {
//    for (int j = 1; j < 10; j++) {
//      ellipse(i * 60, i * 60, 50, 50);
//    }
//  }
//}

//------------------------------------------------------------------------------------
//Map [incomplete]

//void setup() {
//  size(600, 600);
//  for (int i = 0; i < width; i++) {
//    for (int j = 0; j < height; j++) {
//      float r = map(i, 0, 255, 0, width);
//      float g = map(j, 0, 255, 0, height);
//      stroke(r, g, 175);
//      point(i, j);
//    }
//  }
//}

//------------------------------------------------------------------------------------
//Scope [imcomplete]

//void setup() {
//  size(600, 600);
//}

//void draw() {
//  int yPosition = height/2;
  

//  if (yPosition >= height) {
//    yPosition = 0;
//  } 

//   else {
//    yPosition += 10;
//  }
//  ellipse(width/2, yPosition, 100, 100);
//}

//---------------------------------------------------------------------------------------
//Transform 1 [done]

//void setup() {
//  size(600, 600);
//  rectMode(CENTER);
//}

//void draw() {
//  background(80);
 
//  noStroke();
//  rect(mouseX, mouseY, 100, 100);
//   translate(mouseX, mouseY);
//}

//---------------------------------------------------------------------------------------
//Transform 2 [done]

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
//  popMatrix();  

//  pushMatrix();
//  translate(300, 300);
//  rotate(radians(angle2));
//  rect(0, 250, 50, 50);
//  popMatrix();
  

//}

//---------------------------------------------------------------------------------------
//Arrays 1 [incomplete]

//float[] pos = { map(100,width/2,0,width/2,height)};

//void setup() {
//  size(600, 600);
//  background(240);
//}

//void draw() {
//   //for (int i = pos.length-1; i > 0; i--){
//   //   pos [i] = pos[i-1];
//   // }
    
//   pos[0] = 0;

   
//  for (int i = 0; i < pos.length;i++) {
//    ellipse(width/2, pos[i], 50, 50);
      
//  }
//}

//---------------------------------------------------------------------------------------
//Arrays 2 [done]

//float[] pos = new float[10];

//void setup() {
//  size(600, 600);
//}

//void draw() {
//  background(240);
//  for (int i = 0; i < pos.length; i++) {
//    noFill();
//    ellipse(width/2, height/2, i*60, i*60);
//  }
//}

//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
//EXTRA CREDIT
//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
//Map EC [done]

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
