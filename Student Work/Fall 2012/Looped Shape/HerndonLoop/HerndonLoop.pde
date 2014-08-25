PFont myFont;
//for floating Sebastian picture
float a = 0; // instead of normal x and y 
float b = 0;
float targetA;
float targetB;
float easing;
PImage img;

void setup() {
  size(500, 480);
  smooth();
  myFont = loadFont("Gotham.vlw");
  easing = 0.05;
  img = loadImage("sebastian.jpeg");
}

void draw() {
  background(#FF5F29); 
  for (int y = 25; y < height; y+=50) {
    for (int x = 5; x < width; x+=100) {
      textFont(myFont);
      textSize(25);
      fill(#77D169);
      text("CANES", x, y);
    }
  } // orange CANES words

  for (int y2 = 50; y2 < height; y2+=50) {
    for (int x2 = 5; x2 < width; x2+=100) {
      textFont(myFont);
      textSize(25);
      fill(#FFFFFF);
      text("CANES", x2, y2);
    }
  } // white CANES words 

  // for floating Sebastian 
  targetA = mouseX;
  targetB = mouseY;
  float d = dist(a, b, targetA, targetB);
  if (d > 1.0) {
    a += (targetA - a) * easing;
    b += (targetB - b) * easing;
  }
  image(img, a, b); // adds image
}

