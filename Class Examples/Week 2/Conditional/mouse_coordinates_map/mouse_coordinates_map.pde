void setup() {
  size(500, 500);
}

void draw() {
  //map parameters are: input value, minimum value, maximum value, target minimum, target maximum
  float redness = map(mouseX, 0, width, 0, 255);
  fill(redness, 0, 0);
  ellipse(width/2, height/2, 50, 50);
}

