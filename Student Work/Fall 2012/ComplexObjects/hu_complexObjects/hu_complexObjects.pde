//comlex objects

Circle[] circles = new Circle[30];
Square square;

void setup(){
  size(500, 500);
  smooth();
  rectMode(CENTER);
  frameRate(50);
  square = new Square();
  for(int i = 0; i < circles.length; i ++){
    circles[i] = new Circle();
  }
}

void draw(){
  background(0);
  
  square.display();
  square.wander();
  
  for(int i = 0; i < circles.length; i ++){
    circles[i].display();
    circles[i].run();
    circles[i].collide(square);
  }
}
  
