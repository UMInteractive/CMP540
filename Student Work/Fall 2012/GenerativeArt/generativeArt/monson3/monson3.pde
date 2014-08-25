int r


void setup() {
  size(displayWidth, displayHeight);
  frameRate(10);
  background(255);

}

void draw() {
  noStroke();
  fill(random(0, 255), random(0,255), random(0,255), 30);
  ellipse(mouseX,mouseY,r,300);  
  
  x = x - 50;
  if (x < 0) { 
    x = height; 
  }
}
