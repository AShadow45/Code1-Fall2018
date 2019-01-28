//Midterm Review + answers
//Conditionals 3
//correct answer

//void setup() {
//  size(600,600);
//}

//void draw() {
//  background(150);
//  float dist = dist(width/2,height/2,mouseX,mouseY);
 
//  if (mousePressed && dist < 100) {
//    fill(255);
//  } else {
//    fill(150);
//  }
  
//  ellipse(width/2,height/2,200,200);
//}

//------------------------------------------------------------------
//Random
//correct answer

//void setup(){
//  size(600,600);
//  background(50);
//  fill(0);
//  ellipse(width/2,height/2,300,300);
//}

//void draw() {
//  float x = random (width/2-150,width/2+150);
//  float y = random (height/2-150,height/2+150);
//  float dist = dist (x,y,width/2,height/2);
//  if(dist < 150){
//  stroke(255);
//  point(x,y);
//  }
//}

//------------------------------------------------------------------
//Map
//correct answer

//void setup() {
//  size(600, 600);
//  for (int i = 0; i < width; i++) {
//    for (int j = 0; j < height; j++) {
//      float r = map(i, 0, width, 0, 255);
//      float g = map(j, 0, height, 0, 255);
//      stroke(r, g, 175);
//      point(i, j);
//    }
//  }
//}

//------------------------------------------------------------------
//Map EC
//correct answer

//void setup() {
//  size(600, 600);
//  rectMode(CENTER);
//  noStroke();
//}

//void draw() {
//  background(50);
//  translate(width/2, height/2);
//  float angle = map(mouseX,0,width,radians(0),radians(360));
//  rotate(angle);
//  triangle(0, -100, 50, 100, -50, 100);
//}

//------------------------------------------------------------------
//Scope
//correct answer

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

//------------------------------------------------------------------
//Scope EC
//correct answer

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

//------------------------------------------------------------------
//Transform 1
//correct answer

//void setup() {
//  size(600, 600);
//  rectMode(CENTER);
//}

//void draw() {
//  background(80);
//  translate(mouseX, mouseY);
//  noStroke();
//  rect(0, 0, 100, 100);
//}

//------------------------------------------------------------------
//Arrays 2
//correct answer

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

//------------------------------------------------------------------
//Arrays EC

//int gridW = 10;
//int gridH = 10;
//float[][] greyColors = new float[gridW][gridH];

//void setup() {
//  size(600, 600);
//  for (int i = 0; i < gridW; i++) {
//    for (int j = 0; j < gridH; j++) {
//      greyColors[i][j] = map(j * gridW + i, 0, gridW * gridH, 0, 255);
//    }
//  }
//}

//void draw() {
//  for (int i = 0; i < gridW; i++) {
//    for (int j = 0; j < gridH; j++) {
//      greyColors[i][j]+=1;
//      fill(greyColors[i][j]);
//      rect(i*60, j*60, width/gridW, height/gridH);
//      if(greyColors[i][j] > 255) {
//        greyColors[i][j] = 0;
//      }
//    }
//  }
//}

//------------------------------------------------------------------
//Processing 2D Array Example

float[][] distances;
float maxDistance;
int spacer;

void setup() {
  size(600, 600);
  maxDistance = dist(width/2, height/2, width, height);
  distances = new float[width][height];
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      float distance = dist(width/2, height/2, x, y);
      distances[x][y] = distance/maxDistance * 255;
    }
  }
  spacer = 10;
  strokeWeight(6);
  noLoop();  // Run once and stop
}

void draw() {
  background(0);
  // This embedded loop skips over values in the arrays based on
  // the spacer variable, so there are more values in the array
  // than are drawn here. Change the value of the spacer variable
  // to change the density of the points
  for (int y = 0; y < height; y += spacer) {
    for (int x = 0; x < width; x += spacer) {
      stroke(distances[x][y]);
      point(x + spacer/2, y + spacer/2);
    }
  }
}
