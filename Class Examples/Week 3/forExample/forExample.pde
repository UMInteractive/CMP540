
void setup() {
  size(500, 500);
}

void draw() {
background(0);
  for (int i = 0; i < 10; i = i + 1) {
    ellipse(i * 10, height/2, 5,5);
  }
}

