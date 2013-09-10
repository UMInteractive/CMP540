void setup() {
  size(500, 500);
}

void draw() {
  //ellipse(mouseX, mouseY, 20,20);
}

void mousePressed() {
  ellipse(mouseX, mouseY, 20, 20);
}

void mouseReleased() {
  rect(mouseX, mouseY, 20, 20);
}

void mouseDragged() {
  ellipse(mouseX, mouseY, 10, 10); 
}
