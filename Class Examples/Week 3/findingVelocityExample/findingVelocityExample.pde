void setup() {
  size(500,500, P2D);
}

void draw() {
  float velocity = dist(mouseX, mouseY, pmouseX, pmouseY);  
  ellipse(mouseX, mouseY, velocity, velocity);
}
