PImage myImage;
color myPaintingColor;

void setup() {
  myImage = loadImage("dogs.jpg");
  size(myImage.width/2, myImage.height/2, P2D);  
  image(myImage, 0, 0);

}

void draw() {
  
}

void mousePressed() {
  myPaintingColor = myImage.get(mouseX, mouseY);
  
}

void mouseDragged() {
  fill(myPaintingColor);
  rect(mouseX, mouseY, 5, 5);
 
}
