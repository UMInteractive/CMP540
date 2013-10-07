class Morsel {
  float x;
  float y;
  color m_color;
  float thickness;
  boolean eaten;

  Morsel() {
    eaten = false;
    x = random(width);
    y = random(height);
    m_color = color(random(255), random(255), random(255));
    thickness = random(10,20);
  }

  void display() {
    fill(m_color);
    ellipse(x, y, thickness, thickness);
    x = x + random(-3,3);
    y = y + random(-3,3);
  }
}

