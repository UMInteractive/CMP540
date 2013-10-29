

void setup() {
  size(500,500);
}

void draw() {
  int i = 0;
  while (i < width) {
    noStroke();
    float distance = abs (mouseX-i);
    fill(distance);
    rect (i,0,5,height);
    //increase i by 2
    i+=10;
  }
  
  //Draw endless rects at random locations with width and
  //height depend on location of the mouse
  for (int a = 1; a < 30; a++) {
    fill(127,0,0);
    rect(random(500),random(500),mouseX,mouseY);
  }
}
