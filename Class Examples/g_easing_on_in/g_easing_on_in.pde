float x = 0; // Initial x-coordinate
float y = 0; // Initial y-coordinate
float targetX; // Destination x-coordinate
float targetY; // Destination y-coordinate
float easing; // Size of each step along the path

void setup() {
  size(500, 500);
  noStroke();
  smooth();
  easing = 0.05; // Size of each step along the path

}

void draw() {
  background(0);
  //set the target to where our mouse is going
  targetX = mouseX;
  targetY = mouseY;

  //figure out the distance between the current point and our
  //target point
  float d = dist(x, y, targetX, targetY);
  //if the distance is greater than 1, we ease in
  if (d > 1.0) {
    //our target coordinate minus where we are currently, multiplied
    //by the easing amount.
    //every time we it gives just a little bit more.  this is zeno's
    //paradox
    x += (targetX - x) * easing;
    y += (targetY - y) * easing;
  }
  //and draw our ball
  fill(255);
  ellipse(x, y, 20, 20);
}
