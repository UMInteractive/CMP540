void setup() {
 size(500,500); 
}


void draw() {
  background(0);
  for (int x = 0; x < width; x = x + 30) {
      ellipse(x, height/2, 10, 10);
  }
}
