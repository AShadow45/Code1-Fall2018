ArrayList <Bounce> bouncey = new ArrayList <Bounce>();
float numBounce = 5;

void setup(){
  size(600,600);
  noStroke();
  for (int i = 0; i < numBounce; i++){
    bouncey.add(new Bounce(50));
  }
}

void draw(){
  background(0);
  for (Bounce b: bouncey){
    b.move();
    b.display();
    b.checkboundaries();
  }
}
