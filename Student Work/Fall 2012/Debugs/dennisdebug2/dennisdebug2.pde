void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  for (int x = 0; x < width; x = x + 20) {
    rect(x, height/2, 10, 10);
  }
  for (int y = 0; y < height; y = y + 20) {
    rect(width/2, y, 10, 10);
  }
}

