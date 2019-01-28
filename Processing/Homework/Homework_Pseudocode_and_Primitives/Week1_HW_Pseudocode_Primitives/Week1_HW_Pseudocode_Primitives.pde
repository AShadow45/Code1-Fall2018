//Analisse Guadeloupe
//August 31, 2018

//Pseudocode - Cooking White Rice

//Locate the dry rice, a large pot and 4 cup measuring cup 
//Place bag of rice on the kitchen counter
//Place a large pot on the stove. 
//Pour water into measuring cup until you reach 4 cups
//Fill the pot 4 cups of water
//Turn the stove on high heat 
//Grab the olive oil from the cupboard
//Pour 1 tbsp of oil in the the pot of water
//Bring water to a boil
//Add 2 cups of rice to the boiling pot of water
//Leave pot on high heat for 1 minute
//Stir the rice for 1 minute
//Cover the pot 
//Lower the heat on the stove to medium low
//Let the rice cook for 20 minutes
//Stir rice a few times during the first 5 minutes
//After 20 minutes, turn off heat
//Let rice sit and cool for 2 minutes
//Place a few spoonfuls of rice in a bowl and enjoy

//--------------------------------------------------

size(600,600);
background(0);
//Background Circles
fill(255);
noStroke();
ellipse(300,300,500,500);
ellipse(0,0,90,90);
ellipse(0,600,90,90);
ellipse(600,0,90,90);
ellipse(600,600,90,90);
//Left Ear Outer
stroke(0);
ellipse(height/4 + 50, width/4 +50,150,200);
//Right Ear Outer
stroke(0);
ellipse(height/4 + 250, width/4 + 50,150,200);
//Left Ear Inner
fill(0);
noStroke();
ellipse(height/4 + 50, width/4 +50,100,150);
//Right Ear Inner
fill(0);
noStroke();
ellipse(height/4 + 250, width/4 +50,100,150);
//Head
fill(255);
stroke(0);
ellipse(300,300,300,300);
//Left EYe
fill(0);
noStroke();
rect(210,250,50,50);
//Right Eye
fill(0);
noStroke();
rect(330,250,50,50);
//Nose
fill(0);
noStroke();
triangle(280, 320, 300, 350, 320, 320);
//Mouth
stroke(0);
line(250, 390, 350, 390);
