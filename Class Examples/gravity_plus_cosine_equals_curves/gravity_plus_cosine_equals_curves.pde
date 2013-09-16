float x, y;
float adjustedX;
float angle;
int radius;

void setup() {
  size(400,400);
  rectMode(CENTER); 
  radius = 40;
  y = 0;
  x = 0;
  smooth();
}

void draw() {
    // origin + cosine of the angle times half the radius
    adjustedX = x + cos(radians(angle))*(radius/2);
      //start in the middle and add the lil bit that adjustedX is
      ellipse((width/2) + adjustedX, y, 5, 5);
    //now we increment angle by 1 so that adjustedX is affected
    angle++;
    y++;
}
