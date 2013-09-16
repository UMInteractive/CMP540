color magenta = #F700E7;
int redness = 1;
void setup() {
  size(500, 500);
}

void draw() {
  fill(redness, 0, 0);
  rect(0, 0, width, height);
  fill(magenta);  
  ellipse(width/2, height/2, 50, 50);
  redness*= 2;
  if (redness >= 255) {
    redness = 1;
  }
}

