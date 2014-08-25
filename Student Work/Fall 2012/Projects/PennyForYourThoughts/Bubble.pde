class Bubble {
  String thought;
  PVector position, nextPosition;
  float timeLeft;
  float w;
  float h;
  PFont font;
  color bubbleColor;
  color textColor;
  float scale;
  float offsetX;
  float offsetY;
  float easing;

  Bubble(PVector pos, float s, String t) {
    position = pos;
    nextPosition = pos;
    scale = s;
    timeLeft = 110;
    h = 50;
    easing = .05;
    thought = t;
    w = textWidth(t) + 50;

    offsetX = 60;
    offsetY = -50;
  }

  void display() {
    position.x += (nextPosition.x - position.x) * easing;
    position.y += (nextPosition.y - position.y) * easing;
    fill(0);
    if (timeLeft < 100) {
      rectMode(CENTER);
      rect(position.x + offsetX, position.y + offsetY, w*scale, h*scale);
      fill(255);
      textAlign(CENTER, CENTER);
      text(thought, position.x + offsetX, position.y + offsetY);
    }
    timeLeft--;
  }
}

