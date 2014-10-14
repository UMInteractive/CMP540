boolean drawSomething;
Box myBox;

void setup() {
  size(500,500);  
  drawSomething = false;
  myBox = new Box(width/2, height/2);
}

void draw() {
  background(0);
  if (drawSomething == true) {
      myBox.display();
  }
}

void mousePressed() {
   drawSomething = !drawSomething; 
}
