color magenta = #F700E7;
float xPosition = 0;
float xDirection = 1;

void setup() {
  size(500, 500);
  noStroke();
}

void draw() {
  //millis keeps counting up, so we just hop along for the ride but range between 0 and 255
  fill(0, 0, 0, 1);
  rect(0, 0, width, height);
  fill(magenta);  
  ellipse(xPosition, height/2, 50, 50);
  xPosition = xPosition + xDirection;
  if (xPosition < 0 || xPosition > width) {
    xDirection *= -1;
  }
}

