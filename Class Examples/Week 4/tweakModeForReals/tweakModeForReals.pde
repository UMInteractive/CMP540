void setup() {
  size(500, 500);
}

void draw() {
  background(135);
  fill(175, 95, 190);
  for (int i = 0; i < 241; i = i + 16) {
    ellipse(100 + (i * 1), height/2, 120, 212);
  }
}
