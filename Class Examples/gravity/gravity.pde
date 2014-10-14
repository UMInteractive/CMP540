color ballColor;
float x;
float y;
float ySpeed;
float yDirection;
float gravity;

void setup() {
  size(600, 600);
  background(0);
  ballColor = color(255);
  x = width/2;
  y = height/2;
  ySpeed =6;
  yDirection = 1;
  gravity = .1;
}

void draw() {
  background(0);
  fill(ballColor);
  ellipse(x, y, 20, 20);
  y = y + ySpeed;
  ySpeed = ySpeed + gravity;  
  println("Y SPEED: " + ySpeed);
  if (y > height) {
    ySpeed = ySpeed * -0.95;
    ballColor = color(random(255),random(255),random(255));
  }
  

  
}

