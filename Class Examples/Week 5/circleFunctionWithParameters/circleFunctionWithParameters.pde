void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  circle(mouseX, mouseY, 400);
}

void circle(int x, int y, int diameter) {
  ellipse(x, y, diameter, diameter);
}
