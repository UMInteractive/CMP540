PImage myImage;
color myPaintingColor;

void setup() {
  myImage = loadImage("dogs.jpg");
  size(myImage.width/2, myImage.height/2, P2D);  
//  image(myImage, 0, 0);
  noStroke();
}

void draw() {
  float x = random(0, width);
  float y = random(0, height);
  myPaintingColor = myImage.get(int(x),int(y));
  fill(myPaintingColor);
  ellipse(x, y, 20, 20);
  
}

void mousePressed() {
//  myPaintingColor = myImage.get(mouseX, mouseY);
  
}

void mouseDragged() {
//  fill(myPaintingColor);
//  rect(mouseX, mouseY, 5, 5);
 
}
