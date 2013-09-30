

void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  for (int x = 0; x < width; x = x + 10) {
    bullseye(x, height/2, 15, 10);
  }
}

void bullseye(int x, int y, int radius, int rings) {
  
  for (int i = radius; i > 0; i = i - radius/rings) {
    ellipse (x, y, i, i);
  }
}

