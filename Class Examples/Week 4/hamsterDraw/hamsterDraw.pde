/*
  PFont
  Motion
  Circles
 
*/
PImage myImage;
color selectedColor;

void setup() {
  myImage = loadImage("hamster.jpg");
  size(myImage.width, myImage.height);
  image(myImage, 0, 0);
  noStroke();
}

void draw() {
  fill(selectedColor);
  rect(0,0,40,40);
}

void mousePressed() {
  selectedColor = myImage.get(mouseX, mouseY);  
}

void mouseDragged() {
 fill(selectedColor);
  ellipse(mouseX, mouseY, 50, 50); 
}
