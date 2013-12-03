class Dot {
  float x;
  float y;
  color dotcolor = color(255, 0, 0);
  float r;
  float c1, c2, c3;
  boolean hovering;

  Dot(int _x, int _y, int _r) {
    x = _x;
    y = _y;
    r = _r;
    hovering = false;
    dotcolor = color(c1, c2, c3);
  }



  void display() {
    fill(dotcolor);
    if (dist(x, y, mouseX, mouseY) <= r/2) {
      dotcolor = color(c1, 255, 255);
      c1+=5;
      if (c1 > 359) {
        c1 = 1;
      }
      hovering = true;
    }
    else {
      hovering = false;
    }
    noStroke();
    ellipse(x, y, r, r);
  }

  void grow() {
    if (hovering) {
      r++;
    }
  }
}

