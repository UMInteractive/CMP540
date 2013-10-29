

void setup() {
  size(500,500);
}

void draw() {
  if (mouseX < width/3){
    background(255);
  }
  else if (mouseX < 2*width/3) {
    background(127);
  }
  else {
    background(0);
  }
}
