int numWalkers = 10;
ArrayList<Walker> walkers = new ArrayList<Walker>();


void setup() {
  size(600,600);
  
  for (int i =0; i< numWalkers; i++) {
    walkers.add(new Walker(random(0,width),random(0,height)));
  } 
 
}

void draw() {
  for (Walker w : walkers) {
    w.display();
    w.walk();
    
  }
}
