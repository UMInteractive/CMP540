float[] o;

void setup() {
  size(500, 500);
  o = new float [width];
  for (int i = 0; i<o.length; i++) {
    o[i] = random(0, height);
  }
}
void draw() {
  for (int i = 0; i<o.length; i++) {
    fill(random(255, 20), random(0, 255), o[i]);
    ellipse(random(-50,width), random(-50,width), o[i], o[i]);
  }
}


