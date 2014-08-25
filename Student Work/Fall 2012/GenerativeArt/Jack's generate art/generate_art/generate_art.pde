Circle circle[];
Square square[];

void setup() {
  frameRate(10);
  size(800, 800);
  background(0);
  colorMode(HSB, 100);
  circle = new Circle[50];
  square = new Square[50];
  for (int i = 0; i <49; i ++) {
    circle[i] = new Circle();
    circle[i].display();
    square[i] = new Square();
    square[i].display();
  }
}

void draw() {
if(millis()<=3000){
  background(0);
  // if (mousePressed){
  for (int i = 0; i <49; i ++) {
    circle[i].play();
    square[i].play();
  }
}
}

