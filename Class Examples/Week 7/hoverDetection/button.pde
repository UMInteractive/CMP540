class Button {

  //  PVector position;
  float x;
  float y;
  int bWidth;
  int bHeight;
  color foreground;
  boolean hover;

  Button(float _x, float _y) {
    x = _x;
    y = _y;
    bWidth = 100;
    bHeight = 20;
    foreground = color(255);
    hover = false;
  }

  void show() {
    if (hover) {
      fill(255, 0, 0);
    } else {
      fill(foreground);
    }
    rect(x, y, bWidth, bHeight);
  }

  void checkHover(float hoverX, float hoverY) {
    if (hoverX >= x && hoverX <= x + bWidth && hoverY >= y && hoverY <= y + bHeight) {
      hover = true;
      bWidth--;
    } else {
      hover = false;
    }
  }
}

