float x[];
float y[];
int selectedBall = 0;

void setup() {
  size(500, 500); 
  x = new float[100];
  y = new float[100];   

  for (int i = 0; i < 100; i++) {
    x[i] = i * 20;
    y[i] = height/2;
  }
}

void draw() {
  background(0);
  for (int i = 0; i < 100; i++) {
    if (selectedBall == i) {
      fill(255, 0, 0);
    } else {
      fill(255,100);
    }
    ellipse(x[i], y[i], 20, 20);
  }
}

void mousePressed() {
  selectedBall++;
  if (selectedBall > x.length) {
    selectedBall = 0;
  }
}

