class Ball {
  //PVector location has location.x and location.y
  PVector location;
  //PVector velocity has velocity.x and velocity.y
  PVector velocity;
  float size;
 
  Ball(float s) {
    location = new PVector (random(0+size/2,width-size/2),random(0+size/2,height-size/2));
    velocity = new PVector (random(-10,10),random(-10,10));
    size = s;
  }
  
  void display(){
    fill(0);
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
  
  //void checkcollision(ArrayList<Ball>balls){
  //  for (Ball b : balls){
  //    float d = dist(location.x,location.y,b.location.x,b.location.y);
  //    float sumRad = size/2 + b.size/2;
      
  //  if (d<= sumRad){
  //      velocity.x*= -1;
  //      velocity.x*= -1;
  //      b.velocity.x*= -1;
  //      b.velocity.y*= -1;
  //  }
  //  }
  //} 
}
