int speed = 1;
float x;
float xpos;

void setup() {
  size (800, 500);
  noStroke();
}

void draw() {
  background(25, 200, 245);
  drawMickey(100, 100, 60);
  drawMickey(200, 300, 50);
  drawMickey(50, 400, 10);
  drawMickey(300, 20, 100);
  fly();
  bounce();
}

void fly() {
  x = x+speed;
}

void drawMickey(float xpos, float y, float w) {
  fill(0);
  ellipse(xpos+x, y, w, w);
  ellipse(xpos+x+((0.8)*w), y+((0.6)*w), (w+w/2), (w+w/2));
  ellipse(xpos+x+(1.6*w), y, w, w);
}

void bounce() {
  if ((x>(width-(xpos+x))) || (x<0)) {
    speed = speed * -1;
  }
}

