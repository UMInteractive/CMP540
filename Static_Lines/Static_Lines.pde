color red = #ff0000;


void setup() {
  size(600, 200);
  background(255);
  smooth();
  stroke(red, 50);
}

void draw() {
  background(red);
  fill(255);
  stroke(0);
  rect(50, 25, 500, 150);
  int n = 1000;
  float[] xTop = new float[n];
  float[] xBottom = new float[n];
  stroke(red, 50);
  for (int i = 0; i < n; i++) {
    xTop[i] = random(50, 550);
    xBottom[i] = random(50, 550);
    line(xTop[i], 25, xBottom[i], 175);
  }
}

