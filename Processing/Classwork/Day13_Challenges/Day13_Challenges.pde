int rows =15;
int columns = 15;
float w, h;
float [] [] posx = new float [rows] [columns];
float [] [] posy = new float [rows] [columns];
color [] [] colors = new color [rows] [columns];

void setup() {
  size(600,600);
  w = width/columns;
  h = height/rows;
  for (int r = 0; r < posx.length; r++) {
    for (int c = 0; c < posx[0].length; c++){
      posx[r][c] = c*w;
      posy[r][c] = r*h;
      colors [r][c] = color(255,255,0);
      
      colors [0][c] = color(0);
      colors [posx.length-1][c] = color(0);
      colors [r][0] = color(0);
      colors [r][posx.length-1] = color(0);
     
    }
  }
}

void draw() {
  for (int r = 0; r < posx.length; r++) {
    for (int c = 0; c < posx[0].length; c++){
    //Method One
      //fill(255);
      
      //if (r ==0 || r==posx.length -1 || c==0 || 
      //c==posx.length -1 || c==posx[0].length/2 || r==posx.length/2 ){
      //  fill(255,0,0);
      //}
      
      //Method Two
      fill(colors [r][c]);
      rect(posx[r][c],posy[r][c],w,h);
    }
      
  }
}
