void setup() {
  size(800, 480);
  smooth();
}

void draw() {
  int h=20;
  strokeWeight(1);
  for (int x=0; x<=800; x=x+10) {
    stroke(2*h, 2*h, 2*h);
    line(x, 240+h, x, 240-h);
    if (h<100) {
      h=h+15;
    }
    else {
      h=h-80;
    }
  }
  for (int x=5; x<=800; x=x+10) {
    stroke(2*h, 2*h, 2*h);
    line(800-x, 240+h, 800-x, 240-h);
    if (h<100) {
      h=h+15;
    }
    else {
      h=h-80;
    }
  }
}

