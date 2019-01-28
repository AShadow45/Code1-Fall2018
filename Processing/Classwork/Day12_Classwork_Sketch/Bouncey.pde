class Bouncey {
  float xPos, yPos, xSpeed, ySpeed;
  int size;
  color fill;

  Bouncey() {
    size = 50;
    fill = color(255);
    xPos = random (0 +size/2,width -size/2);
    yPos = random (0 +size/2,height -size/2);
    
    float xDir = random(-1,1);
    float yDir = random(-1,1);
    
    if (xDir > 0) {
      xSpeed = 5;
    } else {
      xSpeed = -5;
    }
    
    if (yDir > 0) {
      ySpeed = 5;
    } else {
      ySpeed = -5;
    }
  
  }
  
  void display() {
    fill(fill);
    ellipse(xPos,yPos,size,size);
  }
  
  void move() {
    xPos+=xSpeed;
    yPos+=ySpeed;
  }
  
  void checkBoundaries() {
    if(xPos >= width - size/2 || xPos < 0 + size/2){
      xSpeed*= -1;
    }
    
    if(yPos >= width - size/2 || yPos <= 0 + size/2){
      ySpeed*= -1;
    }
  }
  
  void checkCollision(ArrayList<Bouncey>bouncies){
    for (Bouncey b : bouncies){
      float d = dist(xPos,yPos,b.xPos,b.yPos);
      float sumRad = size/2 + b.size/2;
      
      if (d<= sumRad){
        xSpeed*= -1;
        ySpeed*= -1;
        b.xSpeed*= -1;
        b.ySpeed*= -1;
      }
    }
  }
  
}
