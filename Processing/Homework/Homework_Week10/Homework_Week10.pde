//Analisse Guadeloupe
//November 4, 2018

//Challenge 1

//int COLS_NUM = 30;
//int ROWS_NUM = 30;

//float[][] posx = new float[COLS_NUM][ROWS_NUM];
//float[][] posy = new float[COLS_NUM][ROWS_NUM];

//void setup() {
//  size(600, 600);

//  float xStepAmount = (width-200)/(posx.length - 1);
//  float yStepAmount = (height-200)/(posx[0].length - 1);

//  for (int i = 0; i < posx.length; i++) {
//    for (int j = 0; j < posx[0].length; j++) {
//      posx[i][j] = 100 + i * xStepAmount;
//      posy[i][j] = 100 + j * yStepAmount;
//    }
//  }

//  strokeWeight(5);
//  stroke(255);
//}

//void draw() {
//  background(5);

//  for (int i = 0; i < posx.length; i++) {
//    for (int j = 0; j < posx[0].length; j++) {
//      float r = map(i,0,posx.length,0,255);
//      float g = map(j,0,posx.length,0,255);
//      float dist = dist(mouseX,mouseY,posx[i][j],posy[i][j]);
//      float b = map(dist,0,100,0,255);
//      stroke(r,g,b);
//      point(posx[i][j], posy[i][j]);
      
//      posx[i][j] += random(-1.5,1.5);
//      posy[i][j] += random(-1.5,1.5);
//    }
//  }
//}

//---------------------------------------------------------------------------------
//---------------------------------------------------------------------------------

//Challenge 2
int num = 100;
float[] xPositions = new float [num];
float[] yPositions = new float [num];
int[] colors = new int[num];

void setup() {
  size(600, 600);
  background(100);
  for (int i = 0; i < xPositions.length; i++) {
    xPositions[i] = random(-100,width);
    yPositions[i] = random(-100,height);
    colors[i] = int(random(0,255));
  }
}

void draw() {
   for (int i = 0; i < xPositions.length; i++) {
    rect(xPositions[i],yPositions[i],30,30);
    
    float rand = random(-1,1);
    
    if(rand >=0){
    xPositions[i]+=8;
    } else {
    yPositions[i]+=7;
    }
    
    fill(colors[i]);
    
    if(xPositions[i]>= width || yPositions[i] >=height){
    xPositions[i] = random(-100,width);
    yPositions[i] = random(-100,height);
    }
  }
}
