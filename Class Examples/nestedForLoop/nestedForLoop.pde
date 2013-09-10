void setup() {
  size(500, 500, P2D);
}

void draw() {
  int where = 10;
  for (int x = 0; x < width; x = x + 10) {
    fill(where, where, where); 
    for (int y = 0; y < height; y = y + 10) {
      ellipse(x, y, 5, 5);
    } 
    where = where + 5;
  }
}

