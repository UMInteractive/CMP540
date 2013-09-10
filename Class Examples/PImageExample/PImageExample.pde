PImage myImage;

void setup() {
  myImage = loadImage("scary.jpg");
  size(myImage.width, myImage.height);
}

void draw() {
  background(0);
  image(myImage, mouseX, mouseY);
}
