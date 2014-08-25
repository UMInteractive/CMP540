Dot mydot[] = new Dot[400];
int i = 0;

void setup() {
  size(400, 400, P2D);
  background(0);
  colorMode(HSB);
  smooth();
  for (int x = 10; x<width; x = x+20) {
    for (int y = 10; y < height; y = y +20) {
      mydot[i] = new Dot(x, y, 10);
      i++;
    }
  }
}

void draw() {




  for (int i=0; i<400; i++) {
    mydot[i].display();
    if (mousePressed) {
      mydot[i].grow();
    }
  }
}

