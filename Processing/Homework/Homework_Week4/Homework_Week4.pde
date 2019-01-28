//Analisse Guadeloupe
//Homework Week 4

boolean s = true;
int num = 500;

void setup() {
  size(500,500);
  background(255);
  
  for(int i=0; i< num; i++){
    noStroke();
    float myRandom = random(5,50);
    fill(random(0,255),random(0,255),random(0,255),200);
    ellipse(random(0,width),random(0,height),myRandom,myRandom);
  }
}

void draw(){
  
  for(int i=0; i< num; i++){
    if(s){
    i+=5;
    }else{
    i-=1;
    }
  }
}
