

void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  bullseye(width/2, height/2, 200, 10);
}

void bullseye(int x, int y, int radius, int rings) {
  
  for (int i = radius; i > 0; i = i - radius/rings) {
    ellipse (x, y, i, i);
  }
}

