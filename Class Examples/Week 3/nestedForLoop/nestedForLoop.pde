int r, g, b;
void setup() {
  size(500, 500, P2D);
  noStroke();
}

void draw() {
  r = 0;
  g = 100;
  b = 15;

  background(255);
  for (int y = 0; y < height; y = y + 10) {

    for (int x = 0; x < width; x = x + 10) {
      fill(r,g,b); 
      ellipse(x, y, 5, 5);
    } 
    r = r + 10;
    g = g + 1;
    b = b + 5;
  }
}

