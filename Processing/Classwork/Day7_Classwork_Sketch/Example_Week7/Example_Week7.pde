int num = 50;
int [] x = new int[num];

void setup () {
  size (600,600);
  noStroke();
  fill(255,100);
}

void draw () {
  background(0);
   for (int i = x.length-1; i > 0; i--){
      x[i] = x[i-1];
   }
   
   x[0] = mouseX;
   
   for (int i = 0; i < x.length; i++){
     ellipse(x[i], height/2,i,i);
   }
 
}
