PImage myImage;
color begColor, endColor;
float counter = 0;
int x = 143;
int y = 130; 

void setup() {
  myImage = loadImage("frame.png");
  size(myImage.width, myImage.height); 
  frameRate(10);
  smooth();
  begColor = color(random(255), random(255), random(255));
  endColor = color(random(255), random(255), random(255));
  ellipseMode(CENTER);
  background(#FFFFFF);
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

  x+= 36;
  if (x>width-133) {
    x = 143;
    y+= 20;
  }

  if (y>height-127) {
    x = 143;
    y = 130;
  }
  image(myImage, 0, 0);
}


