PImage myImage;
color myPaintingColor;
int x = 0;
int y = 0;

void setup() {
  myImage = loadImage("dogs.jpg");
  size(myImage.width/2, myImage.height/2, P2D);  
//  image(myImage, 0, 0);
  noStroke();
}

void draw() {
  myPaintingColor = myImage.get(x,y);
  x+=20;
  if (x >= width) {
   x = 0;
   y+=20; 
  }
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
