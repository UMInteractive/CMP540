

void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  fill(255,0,0);
  for (int x = 0; x < width; x = x + 110) {
    bullseye(x, height/2, 70, 5);
  }
}

void bullseye(int x, int y, int radius, int rings) {
  
  for (int i = radius; i > 0; i = i - radius/rings) {
    ellipse (x, y, i, i);
  }
}

