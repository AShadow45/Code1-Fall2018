//Trig Processing Challenge 1
//--------------------------------------------------------------------------------

float angle = 0.0;
float incr = 0.05;
float scalar;

//void setup () {
//  size(600,600);
//  background(0);
//  noStroke();
//  scalar = height/2 - 50;
//}

//void draw() {
//  background(0);
  
//  float x1 = width/2 + cos(angle) * scalar;
//  float y1 = height/2 + sin(angle) * scalar;
  
//  ellipse(x1 ,y1, 100,100);
  
//  angle += incr;
//}

//--------------------------------------------------------------------------------
//Trig Processing Challenge 2

int num = 100;
float size;
float offset;

void setup(){
  size(1000,600);
  background(0);
  offset = height/2;
  size = width/num;
  scalar = height/2 - size/2;
}

void draw() {
  background(0);
   for (int i=0; i<num; i++){
   float y1 = offset + cos(angle +0.1*i) * scalar;
   ellipse(size*i +size/2 ,y1, size,size);
   }
  angle += incr;
}
