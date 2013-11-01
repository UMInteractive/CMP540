float x;
float y;
float easing = 0.05;
float w;
int mickeyColor = 0;

void setup() {
  size (800, 500);
  noStroke();
  smooth();
}

void draw() {
  background(25, 200, 245);
  fill(mickeyColor);
  drawMickey(0, 0, 100);
  drawMickey(50, 200, 10);
  drawMickey(300, 100, 50);
  follow();
}

void drawMickey(float xpos, float ypos, float w) {
  ellipse(xpos+x, ypos+y, w, w);
  ellipse(xpos+x+((0.8)*w), ypos+y+((0.6)*w), (w+w/2), (w+w/2));
  ellipse(xpos+x+(1.6*w), ypos+y, w, w);
}


void follow(){
  float targetX = mouseX;
  float dx = targetX - x;
  if(abs(dx) > 1) {
    x += dx * easing;
  }
  
  float targetY = mouseY;
  float dy = targetY - y;
  if(abs(dy) > 1) {
    y += dy * easing;
  }
}

void mouseReleased() {
  if (mickeyColor == 0) {
    mickeyColor = 255;
  } else {
    mickeyColor = 0;
  }
}
