void setup() {
  size(500, 500);
  background(0);
  smooth();
}

void draw() {
  for (int y = 0; y <= height; y += 25) {
    for (int x = 0; x <= width; x += 25) {
      stroke(255);
      fill( random(255), random(255), random(255), random(255));
      rect(x, y, 25, 25);
    }
  }
}
  

