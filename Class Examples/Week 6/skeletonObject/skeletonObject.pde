Car myCar;

void setup() {
  size(500,500);
  myCar = new Car(100.0,100.0);  
}

void draw() {
  myCar.display();
}
