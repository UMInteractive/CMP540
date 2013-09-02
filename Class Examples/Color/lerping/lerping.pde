color fromGreen = color(0, 255, 0);
color toRed = color(255, 0, 0);
float counter = 0;

void setup() {
  size(200, 200);
  rectMode(CENTER);
}

void draw() {
  counter = counter + .01;
  if (counter >= 1) {
    counter = 0;
  }
  color currentColor = lerpColor(fromGreen, toRed, counter);
  fill(currentColor);
  rect(width/2, height/2, 50, 50);
}

