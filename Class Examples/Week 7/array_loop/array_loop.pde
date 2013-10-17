//declaring the two arrays
float pointX[];
float pointY[];

void setup() {
  size(500, 500);
  //initialize 100 pointX and pointY in the memory
  pointX = new float[100];
  pointY = new float[100];
  //assigning values to our 100 points
  for (int i = 0; i < 100; i++) {
    pointX[i] = random(width);
    pointY[i] = random(height);
  }
}

void draw() {
  //clear the background
  background(0);
  //draw our hundred points
  for (int i = 0; i < pointX.length; i++) {
     ellipse(pointX[i], pointY[i], 10, 10); 
  }
}

void keyPressed() {
}

