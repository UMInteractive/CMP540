float x, y;
float adjustedX, adjustedY;
float angle;
int radius;

void setup() {
  size(600,600);
  rectMode(CENTER); 
  x = width/2;
  y = height/2;
  smooth();
}

void draw() {
    radius = 400;

    // origin + cosine of the angle times half the radius
    adjustedX = x + cos( radians(angle) )* (radius/2);
    // origin + sin of the angle times half of the radius
    adjustedY = y + sin(radians(angle))*(radius/2);
    //this draws a circular motion in red
    fill(255,0,0);
    ellipse(adjustedX, adjustedY, 10, 10);
    //this is just the cosine in green
    fill(0,255,0);
    ellipse(adjustedX, y, 10, 10);
    //this is just the sin in blue
    fill(0,0,255);
    ellipse(x, adjustedY, 10, 10);
    angle++;
}
