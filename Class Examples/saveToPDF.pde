
import processing.pdf.*;
void setup() {
  size(600, 600);
  background(255);
}

void draw() {
  ellipse(mouseX, mouseY, 50, 50);
}

void keyPressed() {
  //space to start drawing to pdf
  if (key == ' ') {
    background(255);
    beginRecord(PDF, "mySweetDrawing.pdf"); 
  }
  if (key == 's') {
    endRecord();
  } 
}


