float counter = 0;

void setup(){
  size(600,600);
}

void draw(){
  loadPixels();
  noiseDetail(10,0.5);
  float xoff =0;
  for(int x=0; x<width; x++){
    float yoff = 0.0;
    for(int y=0; y<height; y++){
      color brightness = color(map(noise(xoff,yoff,counter),0,1,0,255));
      pixels[x+y*height] = color(brightness);
      yoff+= 0.01;
    }
    xoff+=0.01;
  }
  updatePixels();
  counter+=0.1;
}
