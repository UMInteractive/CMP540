int x;
int y;

void setup() {
  size(500, 500);
  x = width/2;
  y = height/2;
}

void draw() {

  ellipse(x, y, 5, 5);
  x+= random(-3, 5);
  y+= random(-3, 5);
  if (offScreen(x, y)) {
    x = width/2;
    y = height/2;
  }
}

boolean offScreen(int xPos, int yPos) {
  if (x > width) {
    return true;
  }
  if (x < 0) {
    return true;
  }

  if (y > height) {
    return true;
  }
  if (y < 0) {
    return true;
  }
  return false;
}

