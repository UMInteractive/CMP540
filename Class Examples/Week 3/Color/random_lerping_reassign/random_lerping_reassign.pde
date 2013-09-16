color fromColor, toColor;
float counter = 0;

void setup() {
  fromColor = color(random(255), random(255), random(255));
  toColor = color(random(255), random(255), random(255));
  size(200, 200);
  rectMode(CENTER);
}

void draw() {
  counter = counter + .01;
  if (counter >= 1) {
    counter = 0;
    fromColor = color(random(255), random(255), random(255));
    toColor = color(random(255), random(255), random(255));
  }
  color currentColor = lerpColor(fromColor, toColor, counter);
  fill(currentColor);
  rect(width/2, height/2, 50, 50);
}

