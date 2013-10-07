float pointX[];
float pointY[];

void setup() {
  size(500, 500);
  pointX = new float[100];
  pointY = new float[100];
  for (int i = 0; i < 100; i++) {
    pointX[i] = random(width);
    pointY[i] = random(height);
  }
}

void draw() {
  background(0);
  for (int i = 0; i < pointX.length; i++) {
     ellipse(pointX[i], pointY[i], 10, 10); 
  }
}

void keyPressed() {
}

