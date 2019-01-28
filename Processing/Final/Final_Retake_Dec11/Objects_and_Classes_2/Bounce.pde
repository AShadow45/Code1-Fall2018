class Bounce {
  PVector location;
  PVector velocity;
  float size;
  
  Bounce(float s){
    location = new PVector(random(0+size/2,width-size/2),random(0+size/2,height-size/2));
    velocity = new PVector(random(-5,5),random(-5,5));
    size = s;
  }
  
  void display(){
    fill(255);
    ellipse(location.x,location.y,size,size);
  }
  
  void move(){
    location.add(velocity);
  }
  
  void checkboundaries(){
    if(location.x >= width - size/2 || location.x < 0 + size/2){
      velocity.x*= -1;
    }
    
    if(location.y >= height - size/2 || location.y <= 0 + size/2){
      velocity.y*= -1;
    }
  }
}
