float x, y;
float adjustedX, adjustedY;
float angle;
float radius;

void setup() {
  size(600,600);
  rectMode(CENTER); 
  x = width/2;
  y = height/2;
  radius = 400;
  smooth();
}

void draw() {
    // origin + cosine of the angle times half the radius
    adjustedX = x + cos(radians(angle))*(radius/2);
    // origin + sin of the angle times half of the radius
    adjustedY = y + sin(radians(angle))*(radius/2);
    //this draws a circular motion in red
    fill(255,0,0);
    ellipse(adjustedX, adjustedY, 10, 10);
    angle++;
    //by slowly adding to the radius each 
    //time we can make a spiral
    radius = radius + .2;
}
