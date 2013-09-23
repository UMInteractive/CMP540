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
//  image(myImage, 0, 0);
  noStroke();
}

void draw() {
  float randomX = random(0, myImage.width);
  float randomY = random(0, myImage.height);
  selectedColor = myImage.get(int(randomX), int(randomY));    
  fill(selectedColor);
  rect(randomX, randomY, 10, 10);
}

