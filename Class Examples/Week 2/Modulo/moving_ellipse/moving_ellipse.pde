color magenta = #F700E7;
int xPosition = 0;

void setup() {
  size(500, 500);
}

void draw() {
  //millis keeps counting up, so we just hop along for the ride but range between 0 and 255
  fill(255, 0, 0);
  rect(0, 0, width, height);
  fill(magenta);  
  ellipse(xPosition%400, height/2, 50, 50);
  xPosition++;
  println(xPosition);
  /*
  if (xPosition%400 == 0) {
     xPosition = 0; 
  }
  */
}

