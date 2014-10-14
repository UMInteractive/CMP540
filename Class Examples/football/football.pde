int x;
int y;
float xSpeed;
float ySpeed;
boolean kicked;

void setup() {
  size(500, 500);
  x = width/2;
  y = 400;
  ySpeed = -1;
  xSpeed = random(-3, 3);
  kicked = false;
}


void draw() {
  if (mousePressed == true) {
   ellipse(mouseX, mouseY, 50, 50); 
  }
  if (kicked == true) {
    y = int(ySpeed + y);
    x = int(xSpeed + x);
  }

  fill(#FF8000);
  ellipse(x, y, 60, 85);
}

void mousePressed() {
  kicked = true;
  rect(mouseX, mouseY, 50,50);
}

void mouseDragged() {
}

void mouseReleased() {
 kicked = false; 
}

