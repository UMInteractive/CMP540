//loop
void setup () {
  size (500, 500);
  background (255);
}

void draw() {
  smooth(); 
  noStroke();
  for (int y=0; y <= height; y +=25) {
    for (int x=0; x <= width; x +=25) {
      fill(255,0,0);  
      ellipse (x, y, 15, 15);
    }
  }

}
