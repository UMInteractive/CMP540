int stepper;

void setup() {
  size(500, 500);  
  noStroke();
}

void draw() {
  background(0);
  //centerOfScreen returns the distance between the center of the screen and the mouse coordinates
  float proximity = centerOfScreen();
  if (proximity <= 20) {
    //circleCross draws a set of circles in a cross pattern
    //the proximity argument changes the size of the circle
    //the stepper argument changes modifies the placement/spacing of the 
    //circles
    circleCross(width/2, height/2, proximity, stepper);
    stepper++;
  }
  else {
    stepper = 0;
    rect(width/2, height/2, 10, 10);
  }
}
