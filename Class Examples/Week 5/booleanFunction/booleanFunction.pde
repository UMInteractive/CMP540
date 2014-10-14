int x;
int y;

void setup() {
  size(500, 500);
  x = width/2;
  y = height/2;
}

void draw() {

  ellipse(x, y, 5, 5);
  x+= random(-5, 5);
  y+= random(-5, 5);
  if (offScreen(x, y)) {
    x = width/2;
    y = height/2;
  }
}

boolean offScreen(int xPos, int yPos) {
  if (xPos > width) {
    return true;
  }
  
  if (xPos < 0) {
    return true;
  }

  if (yPos > height) {
    return true;
  }
  
  if (yPos < 0) {
    return true;
  }
  
  return false;
}

