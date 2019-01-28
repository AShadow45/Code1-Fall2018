////Calling the "size" function and passing it
////x and y values for width and height
////size(500,500);

////triangle(x1,y1,x2,y2,x3,y3)
////order of x,y pairs do not matter as long as they are in correct order
////hard coded triangle drawing
//triangle(0,0,500,0,250,500);

////triangle drawing using width and height keywords
////the middle from the left to right is width/2
////the middle from top to bottm is height/2
//triangle(0,0,width,0,width/2,height);

////by default ellipseMode is set to CENTER
//ellipse(width/2,height/2,100,100);
//ellipseMode(CORNER);
//ellipse(width/2,height/2,100,100);

////by default rectMode is set to CORNER
//rect(width/2,height/2,100,100);
//rectMode(CENTER);
//rect(width/2,height/2,100,100);

////arc(a,b,c,d,start,stop)
////a = x coordinate of start position
////b = y coordinate of start position
////c = how wide we want it to be
////d = how high we want it to be
////start = the angle we start filling in 
////stop = the angle we stop filling in
////the arc function starts and stops in clockwise direction
////note: our diagram on GitHub is counter clockwise
////half circle on the bottom
//arc(width/2,height/2,100,100,0,PI);

////half cirle on the top
//arc(width/2,height/2,100,100,PI,PI * 2);

////bottom left quarter circle
//arc(width/2,height/2,100,100,PI/2,PI);

////top right quarter circle
//arc(width/2,height/2,100,100,PI*1.5,PI*2);

////3/4 circle [missing bottom right quarter]
//arc(width/2,height/2,100,100,PI/2,PI*2);

//mouseX and mouseY are 2 important keywaords in processing
//these keywords grab the coordinates of wherever your mouse is
//ellipse(mouseX,mouseY,100,100);
//function call looks like this -> functionName();
//function definition looks like this -> returnType functionName(){code goes here}

//some functions we can call in processing with out defining
//they are already defined and available in the language
//ex. size(width,height) or ellipse (x,y,width,height)

//other function are called a certain way by default
//and instead we have to define them
//ex. void setup(){} or void draw (){}

  int x = 0; //defining some integer variable x
  //x = 0 ;// initializing x variable that was defined above
  int y = 0; //defining some integer variable y
  //y = 0 ; //initializing y variable that was defined above 
  //float x = 0; //float is a decimal value
  //float y = 0;
  String name = "Hello";

//always called ONE TIME at the beginning of the program run
void setup () {
  //good place to put things you want to stay the same
  size(500,500);
  //8-bit color
  //one value will give a range 0-255
  //0 being black and 255 being white
  background(255);
}

//called continuiously as the program runs
void draw() {
  background(255);
  ellipse(x,y,100,100);
  //x++; //add one to x
  //y++; //add one to y
  x+= 10;
  y+=10;
  println(name);
}
