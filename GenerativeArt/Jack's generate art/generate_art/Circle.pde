class Circle {
  float x, y;
  float colornumber;
  float big = random(1, 50);




  Circle() {
    x = random(0, width);
    y = random(0, height);
    colornumber = random(0, 100);
  }


  void display() {
    noStroke();
    fill(colornumber, 50, 99);
    ellipse(x, y, big, big);
  }


  void play() {
    if (dist(x, y, mouseX, mouseY)>= 20) {
      fill(colornumber, 50, 99);
      ellipse(x, y, big, big);
      x = x+ (x + mouseX)/50*2;// + random(-10, 10);
      y = y+ (y + mouseY)/50*2;// + random(-10, 10);
    }
    
  }
}

