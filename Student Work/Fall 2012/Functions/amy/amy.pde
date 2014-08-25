// First function draws an ellipse halfway between the mouse Y pos
// and the bottom of the window
// Second function changes the stroke color of the ellipse

boolean on = false;
float ran;

void setup() {
  size(500,500);
  background(0);
  strokeWeight(5);
}


void draw() {
  background(0);
  float here = halfway(mouseY, height);
  if (on) {
    stroke(0,255,0);
  }
  else stroke(0);
  ellipse(mouseX, here, 20, 20);
  
  ran = random(10);
  if (ran > 5) {
    flicker();
  }
}


float halfway(float _pt1, float _pt2) {
  float half = (_pt1 + _pt2)/2;
  return half;
}

void flicker() {
  on =! on; 
}

