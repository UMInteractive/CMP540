class Car {

  color exterior;
  color interior;
  float speed;
  float x;
  float y;

  Car(float _x, float _y) {
    x = _x;
    y = _y;
    exterior = color(random(255), 0, 0);
    interior = color(255, 255, 255);
    speed = 0;
  }  

  void display() {
    fill(exterior);
    stroke(interior);
    rect(x, y, 70, 10);
  }
  
  void driveForward() {
     x = x + speed; 
  }
  
  void accelerate() {
     speed = speed + 1; 
  }
  
  void brake() {
     speed = speed * .9; 
  }
  
  void driveBackwards() {
     x = x - speed; 
  }

}

