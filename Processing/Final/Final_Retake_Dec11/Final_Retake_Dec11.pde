//Analisse Guadeloupe
//December 11, 2018


//-----------------------------------------------------------------------------------
//Conditionals

//void setup(){
//  size(600,600);
//  strokeWeight(10);
//  background(255);
//}

//void draw(){
  
//  for (int i = 0; i <= 10; i ++) {
//    int y = 59 * i + 5;
//    line(0,y , width, y);
//    println(y);
    
//    if (y == 64 || y==182 || y==300 ||y==418 || y==536 || y==595){
//      stroke(255,0,0);
//    } else {
//      stroke(0);
//    }
//  }
//}

//-----------------------------------------------------------------------------------
//Loops

//void setup() {
//  size(600, 600);
//  //for (int i = 0; i < width; i++) {
//  //  for (int j = 0; j < height; j++) {
//  //    float r = map(i, 0, width, 0, 255);
//  //    float g = map(j, 0, height, 0, 255);
//  //    stroke(r, g, 175);
//  //    point(i, j);
//  //  }
//  //}
//  int i = 0;
//  while(i < width) {
//    int j=0;
//    while (j < height){
//      float r = map(i, 0, width, 0, 255);
//      float g = map(j, 0, height, 0, 255);
//      stroke(r, g, 175);
//      point(i, j);
//      j++;
//    }
//    i++;
//  }
//}

//-----------------------------------------------------------------------------------
//Map

//void setup() {
//  size(600, 600);
//  rectMode(CENTER);
//  noStroke();
//}

//void draw() {
//  background(50);
//  translate(width/2, height/2);
//  rotate(radians(mouseX*1.25));
//  triangle(0, -100, 50, 100, -50, 100);
//}

//-----------------------------------------------------------------------------------
//Dist

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

//-----------------------------------------------------------------------------------
//Transformations

//float angle = 0;

//void setup(){
//  size(500,500);
//  noStroke();
//  smooth();
//  ellipseMode(CENTER);
//  background(255);
//}

//void draw(){
//  background(255);
//  flower(255,3,214,400,angle*5);
//  flower(2,232,255,width/2,angle);
//  flower(255,247,3,100,angle);
//  angle += 1;
//}

//void flower(int r, int g, int b, int trans, float angle){
//  pushMatrix();
//  translate(trans,trans);
//  rotate(radians(angle));
//  fill(r,g,b,50);
//  ellipse(25, 0, 50, 20);
//  ellipse(-25, 0, 50, 20);

//  rotate(radians(45));
//  ellipse(25, 0, 50, 20);
//  ellipse(-25, 0, 50, 20);

//  rotate(radians(45));
//  ellipse(25, 0, 50, 20);
//  ellipse(-25, 0, 50, 20);

// rotate(radians(45));
//  ellipse(25, 0, 50, 20);
//  ellipse(-25, 0, 50, 20);
//  ellipse(0,0,20,20);
//  popMatrix();
//}

//-----------------------------------------------------------------------------------
//Scope

//float xPos;
//float yPos;
//float size;

//void setup(){
//  background(0);
//  fill(0,255,255);
//  size(600,600);
//  xPos = width/2;
//  yPos = height/2;
//  size = width/2;
//}

//void draw(){
//  ellipse(xPos,yPos,size,size);
//}

//-----------------------------------------------------------------------------------
//1D Array

//int num = 100;
//int[] x = new int[num];
//int[] y = new int[num];

//void setup() {
//  size(600, 600);
//  noStroke();
//  fill(255, 102);
//}

//void draw() {
//  background(0);
//  // Values are shifted to the right
//  // Shift them to the left instead
//  for (int i = 0; i < num-1; i++) {
//    x[i] = x[i+1];
//    y[i] = y[i+1];
//  }

//  // Values are added to the beginning of the array
//  // Add them to the end instead
//  x[x.length-1] = mouseX;
//  y[y.length-1] = mouseY;

//  // Draw the circles
//  for (int i = 0; i < num; i++) {
//    ellipse(x[i],y[i], i/1.1, i/1.1);
//  }
//}

//-----------------------------------------------------------------------------------
//2D Array 1

//int gridW = 15;
//int gridH = 15;
//float a;

//int[][] sizes = new int[gridW][gridH];

//void setup() {
//  size(800, 800);
//  noStroke();
//  a = 0;
//  for (int i = 0; i < gridW; i++) {
//    for (int j = 0; j < gridH; j++) {
//      sizes[i][j] = 15;
//      float r = map(i,0,255,255,0);
//      fill(r,0,0,a);
//      a++;
//    }
//  }
//}

//void draw() {
//  background(0);
//  for (int i = 0; i < gridW; i++) {
//    for (int j = 0; j < gridH; j++) {

//      float w = width/gridW;
//      float h = height/gridH;
//      float xPos = i * width/gridW + w/2;
//      float yPos = j * height/gridH + h/2;

//      ellipse(xPos, yPos, sizes[i][j], sizes[i][j]);
//    }
//  }
//}

//-----------------------------------------------------------------------------------
//2D Array 2

//int rows = 10;
//int columns = 10;
//float w, h;
//float[][] posX = new float[rows][columns];
//float[][] posY = new float[rows][columns];
//color [] [] colors = new color [rows] [columns];


//void setup() {
//  size(600, 600);
//  w = width/rows;
//  h = height/columns;
//  for(int r = 0; r < posX.length; r++){
//    for(int c = 0; c < posX[0].length; c++){
//      posX[r][c] = c * w;
//      posY[r][c] = r * h;
//      colors [r][c] = color(255,0,0);
      
//      colors[r/2][c/2] = color(255,0,0);
//      colors[r][c/2] = color(255);
//      colors[r/2][c] = color(255);
//    }
//  }
//}

//void draw() {
//  for(int r = 0; r < posX.length; r++){
//    for(int c = 0; c < posX[0].length; c++){
//      fill(colors [r][c]);
//      rect(posX[r][c], posY[r][c], w, h);
//    }
//  }
//}

//-----------------------------------------------------------------------------------
//Trig 1

//float x[] = new float[30];
//float angle = 0.0;
//float offset;
//float scalar = 200;
//float speed = 0.02;


//void setup() {
// size(600, 600);
// offset = height/2;
// smooth();
//}

//void draw() {
// background(0);

// //float y1 = offset + sin(angle) * scalar;
// //float y2 = offset + sin(angle + 0.4) * scalar;
// //float y3 = offset + sin(angle + 0.8) * scalar;

// //ellipse(10, y1, 20, 20);
// //ellipse(30, y2, 20, 20);
// //ellipse(50, y3, 20, 20);
// for(int i = 0; i < x.length; i++){
//   float y1 = offset + sin((angle+i)*0.3) * scalar;
//   float xPos = map(i, 0, x.length, 0 + 20, width );
//   ellipse(xPos, y1, 20, 20); 
//   angle += speed/2;
// }
 
//}

//-----------------------------------------------------------------------------------
//Trig 2

//float angle = 0.0;
//float offset;
//float scalar;
//float speed = 0.05;

//void setup() {
//  background(0);
//  size(500, 500);
//  offset = width/2;
//  scalar = width/2 - 100;
//  smooth();
//}
//void draw() {
//  background(0);
//  float x = offset + cos(angle) * scalar;
//  float y = offset + sin(angle) * scalar;
//  ellipse(x, y, 100, 100);
//  angle += speed;
//}

//-----------------------------------------------------------------------------------
//Vectors

//// declare new vectors here
//PVector v1, v2,v3,v4;

//void setup() {
//  rectMode(CENTER);
//  size(600,600);
//  v1 = new PVector(50, 50);
//  v2 = new PVector(width-50,50);
//  v3 = new PVector(50,height-50);
//  v4 = new PVector(width-50,height-50);
//  // initialize new vectors here
//}

//void draw() {
//  rect(v1.x, v1.y, 100, 100);
//  rect(v2.x, v2.y, 100, 100);
  
//  v1.x++;
//  v1.y++;
//  v2.x--;
//  v2.y++;
//  // add vectors 3 and 4 to 1 and 2
//}
