
void setup() {
  size(500,500);
}

void draw() {
  if (mouseX == width/2) {
   println("You're in the middle"); 
  }
}

void mousePressed() {
  ellipse(mouseX, mouseY, 50,50);
  println("MOUSE X: " + mouseX + " MOUSE Y: " + mouseY);
  
}

void mouseDragged() {
  ellipse(mouseX, mouseY, 20,20);
  
}

void mouseMoved() {
 rect(mouseX, mouseY, 40, 40); 
}
