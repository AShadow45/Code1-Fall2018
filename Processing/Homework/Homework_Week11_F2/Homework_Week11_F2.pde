int num = 10;
float[] [] Positions = new float[num+1] [num+1];
color[] colors = new color[num+1];

void setup() {
  size(600, 600);
  background(255);
  //noStroke();
  for (int i = 0; i < Positions.length; i++) {
    Positions[0][i] = random(-100,width);
    Positions[i][0] = random(-100,height);
    colors[i] = color(255,255,255,random(0,10));
  }
}

void draw() {
  for (int i = 0; i < Positions.length; i++) {
    fill(colors[i]);
    rect(Positions[0][i],Positions[i][0], 30, 30);
    
    float rand = random(-1,1);
    
    if(rand >= 0){
      Positions[0][i] += 6;
    } else {
      Positions[i][0] += 6;
    }
    
    //xPositions[i] += random(-6,6);
    //yPositions[i] += random(-6,6);
    
    if(Positions[0][i] >= width || Positions[i][0] >= height){
      Positions[0][i] = random(-100,width);
      Positions[i][0] = random(-100,height);    
    }
  }
}
