float wanderX;
float wanderY;
float x;
float y;

void setup() {
  size(500, 500);  
  x = width/2;
  y = height/2;
  wanderX = random(-1, 1);
  wanderY = random(-1, 1);
}

void draw() {
  ellipse(x, y, 10, 10);
  x = x + wanderX;
  y = y + wanderY;
  if (x > width) {
    wanderX = -1;
  }
  if (x < 0) {
    wanderX = 1;
  }
  if (y > height) {
    wanderY = -1;
  }
  if (y < 0) {
    wanderY = 1;
  }
  if (frameCount%20 == 0) {
    wanderX = random(-1, 1);
    wanderY = random(-1, 1);
  }
}

