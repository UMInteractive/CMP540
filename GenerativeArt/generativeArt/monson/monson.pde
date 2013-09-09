float x;

void setup() {
  size(displayWidth, displayHeight);
  frameRate(10);
  x = height;
  background(255);

}

void draw() {
  noStroke();
  fill(random(0, 255), random(0,255), random(0,255), 40);
  ellipse(mouseX,x,300,300);  
  
  x = x - 50;
  if (x < 0) { 
    x = height; 
  }
}
