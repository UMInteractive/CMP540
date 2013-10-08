class Car {

  color exterior;
  color interior;
  float speed;
  float x;
  float y;

  Car(float _x, float _y) {
    x = _x;
    y = _y;
    exterior = color(0, 0, 0);
    interior = color(255, 255, 255);
    speed = 0;
  }  

  void display() {
    fill(exterior);
    stroke(interior);
    rect(x, y, 100, 30);
  }

}

