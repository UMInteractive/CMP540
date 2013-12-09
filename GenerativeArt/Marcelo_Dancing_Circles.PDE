Circle Circle;
ArrayList circles;
float fr = 20; 


void setup(){
  size(800, 800);
  frameRate(fr);
  circles = new ArrayList();
  for (int i = 0; i < 800; i++) {
    circles.add(new Circle(random(width), random(height)));
    Circle Circle = (Circle) circles.get(circles.size()-1);
    Circle.init();
  }
    
}
 
void draw() {
  background(0);
  for (int i = 0; i < 800; i++) {
    Circle Circle = (Circle) circles.get(i);
    Circle.move();
    Circle.display();
  }
}
 void mousePressed(){
 frameRate(fr*=2);

 }
 



class Circle{
  float x;
  float y;
  float posX;
  float posY;
  float r;
  float g;
  float b;
  float posX2;
  float posY2;
   
  Circle(float _x, float _y) {
    x = _x;
    y = _y;
  }
   
  void init() {
    posX = x;
    posY = y;
    r = random(255);
    g = random(255);
    b = random(255);
  }
     
  void move() {
    x = posX + posX2*sin(frameCount*PI/20);
    y = posY + posY2*sin(frameCount*PI/20);
    if (frameCount%20 == 0) {
      posX2 = random(-100, 100);
      posY2 = random(-100, 100);
      }
  }
   
  void display() {
    fill(r, g, b);
    noStroke();  
    ellipse(x, y, 7, 7);
  }
   
}
