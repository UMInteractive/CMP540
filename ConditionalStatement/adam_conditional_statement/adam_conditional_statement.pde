// For this conditional statement, please change the value 'changeThis' to increase
// or decrese the width of the blue lined background

  int changeThis;
  changeThis = 20;


// Set the Size
size(500,500);
  
// Background: White Color with blue horizontal stripes and 1 vertical red
// Attempting to look like it's on lined paper
background(255);

// Automate the blue lines process
stroke(#DFDEFA);
for (int blueLine = changeThis; blueLine < 500; blueLine += changeThis) {
line(0, blueLine, 500, blueLine);
}

// Vertical Red Line on the left (simulate lined paper)
stroke(255, 0, 0, 100);
line(25, 0, 25, 500);

// Go back to solid white stroke
stroke(1);

// Turn on Smoothing
smooth();

// Change stroke: heavier stroke for visilibilty 
strokeWeight(6);

// Reddit Alien
// Arms
ellipse (220, 258, 40, 55);
ellipse (280, 258, 40, 55);

// Feet:
// Left Foot
arc(224, 314, 40, 30, PI, TWO_PI-PI/2); 
arc(224, 314, 40, 30, TWO_PI-PI/2, TWO_PI); 
// Right Foot 
arc(274, 314, 40, 30, PI, TWO_PI-PI/2); 
arc(274, 314, 40, 30, TWO_PI-PI/2, TWO_PI); 
line(206, 314, 294, 314);


// Body
ellipse(width/2, height/2, 75, 130);

// Antenna
line(250, 180, 265, 130); 
line(265, 130, 315, 135); 
ellipse(315, 135, 25, 25); 

// Ears
ellipse(195, 187, 30, 30);
ellipse(305, 187, 30, 30);

// Head
fill(255);
ellipse(width/2, 200, 120, 80);

// Eyes (Red Color)
noStroke();
fill(#ff4500);
ellipse(230, 190, 18, 18);
ellipse(270, 190, 18, 18);

/* Smile;
 arc(250, 215, radians(135), radians(45));
 The method arc(float, float, float, float) in the type PApplet is
 not applicable for the arguments????
*/

// Smile 2;
// First set of arcs will be black, set the fill to 1 
// Creat the first half circle

// Set the stroke so it's nice and thick
strokeWeight(6);
 
fill(1);
arc(250, 215, 60, 25, HALF_PI, PI); 
arc(250, 215, 60, 25, 0, HALF_PI); 
arc(250, 215, 60, 25, HALF_PI, PI); 
arc(250, 215, 60, 25, 0, HALF_PI); 

// The inside arcks will be white, set those to fill 255
// Creat the inner half circle
fill(255);
arc(250, 215, 50, 20, HALF_PI, PI); 
arc(250, 215, 50, 20, 0, HALF_PI); 
arc(250, 215, 50, 20, HALF_PI, PI); 
arc(250, 215, 50, 20, 0, HALF_PI); 

// Create a ellipse to clear up the inside of the smile
ellipse(250, 215, 54, 20);
stroke(255);







