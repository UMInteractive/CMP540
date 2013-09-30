PImage myImage;
color begColor, endColor;
float counter = 0;
int x = 143;
int y = 142; 

void setup() {
  myImage = loadImage("frame.jpg");
  size(myImage.width, myImage.height); 
  image(myImage, 0, 0);
  frameRate(10);
  smooth();
  begColor = color(random(255), random(255), random(255));
  endColor = color(random(255), random(255), random(255));
  ellipseMode(CENTER);
}

void draw() {
  if (counter >= 1) {
    counter = 0;
    begColor = color(random(255), random(255), random(255));
    endColor = color(random(255), random(255), random(255));
  }

  counter +=.01;
  fill(lerpColor(begColor, endColor, counter));
  ellipse(x, y, 50, 50);

  x+= 30;
  if (x>width-133) {
    x = 143;
    y+= 20;
  }

  if (y>height-127) {
    x = 143;
    y = 142;
  }
}

