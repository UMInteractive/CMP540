void setup() {
  size(500,500);
}

void draw() {
  background(0);
  circle();
}

void circle() {
 ellipse(mouseX, mouseY, 10, 10); 
}
