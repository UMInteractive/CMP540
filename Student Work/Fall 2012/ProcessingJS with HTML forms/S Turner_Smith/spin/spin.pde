//S Turner-Smith ProcessingJS with HTML Forms Mastery
//Based on work Floral Rotation by Chris Peralta http://www.openprocessing.org/sketch/23288

Orbit [] orbits = new Orbit [200];

 
void setup () {
size (500, 500);
smooth();
 
 
// use array to fill class with values
for (int i=0; i <orbits.length; i++) {
int r = 2*i; // radius of the circle
int r2 = 2*i; //radius of the orbit
float t = .005*i;
int red =200+i*3;
int green = 125+i*2; 
int blue = i*2;
orbits[i] = new Orbit ( 0, r, r2, t, red, green, blue);
}
}
 
void draw () {
background (0);
 
// call the array to display all the circles
for (int i = 0; i < orbits.length; i++) {
orbits[i].move();
}
}
 
class Orbit {
 
//data (variables)
 
float theta; //theta is angle
int r; //radius of circle
int r2; //radius of orbit
float t;
int red;
int green;
int blue;
 
//constructor
Orbit (float tempTheta, int tempR, int tempR2, float tempT, int tempRed, int tempGreen, int tempBlue) {
theta = tempTheta;
r = tempR;
r2 = tempR2;
t = tempT;
red = tempRed;
green = tempGreen;
blue = tempBlue;
}
 
//methods and functions
 
void move () {
fill (red*jsColour, green, blue*jsColour, jsInt);
noStroke ();

textSize(32);
text(jsColour, 10, 30);
text(jsInt, 10, 480);
ellipse (width/2 + cos(theta)*r2, height/2 + sin(theta)*r2, r, r);
 
//increment theta
//increase to speed up movement
 
theta += t*jsSpeed;
 
//increment s to change radius of circle
}
}

