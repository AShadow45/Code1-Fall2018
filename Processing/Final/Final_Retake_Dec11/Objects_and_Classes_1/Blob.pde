class Blob {
  float diameter;
  float angle = 0;
  float x,y;
  
   Blob(float x_, float y_, float d_){
    
    x=x_;
    y=y_;
    diameter = d_;
    
    d_ = height - 10;
    
  }
  
  void display(){
    fill(255, 204, 0);
    background(0);

    float d1 = 10 + (sin(angle) * diameter/2) + diameter/2;
    //float d2 = 10 + (sin(angle + PI/2) * diameter/2) + diameter/2;
    //float d3 = 10 + (sin(angle + PI) * diameter/2) + diameter/2;

    ellipse(x, y, d1, d1);
    ellipse(100, 100, d1, d1);
    //ellipse(width/2, height/2, d2, d2);
    //ellipse(width, height/2, d3, d3);

    angle += 0.02;
  }
}
