float wanderX = random(-1,1);
float wanderY = random(-1,1);
float x;
float y;

void setup() {
  size(500,500);
  background(0);  
  smooth();
  x = width/2;
  y = height/2;
}

void draw() {
 fill(255);
 //draw the ellipse
 ellipse(x,y,10,10);
 //wander 
 x = x + wanderX;
 y = y + wanderY;
 
 //make sure we're still in bounds
 //if not, we just reverse it
 
 if (x <= 0) {
   wanderX = 1; 
 }
 
 if (x >= width) {
  wanderX = -1; 
 }
  
 if (y <= 0) {
  wanderY = 1; 
 }
 
 if (y >= height) {
  wanderY = -1; 
 }
 
 if (frameCount%60 == 0) {
    wanderX = random(-1,1);
    wanderY = random(-1,1);
 }
}


