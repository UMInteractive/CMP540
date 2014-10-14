void setup() {
   size(500,500); 
   background(0,255,0);
}

void draw() {
  //background(255,0,0);

  ellipse(mouseX,mouseY, 50,50);
  strokeWeight(10);
  line(0,0,width,height);
  line(0,width,width,0);
}
