float x;
float easing=0.4;
float y;

void setup (){
  size (500,500);
  background (120,0,0);
  smooth();
}

void draw () {
 ellipse (mouseX,mouseY,50,50);
  float targetX=mouseX;
  x+=(targetX-x)*easing;
  ellipse (x,100,50,50);
  println (targetX+":"+x);
  
}
void mousePressed (){
  fill (255,0,0,40);
  ellipse (mouseX,mouseY,50,50);
  float targetY=mouseY;
  y+=(targetY-Y)*easing;
  ellipse (y,100,50,50);
  println (targetY+":"+y);
}


void mouseReleased (){
  fill (250,120,70);
  rect (mouseX,mouseY,50,50);
  float weight= dist(mouseX, mouseY,pmouseX,pmouseY);
  strokeWeight (weight);
  line (mouseX,mouseY,pmouseX,pmouseY);
}
void mouseDragged (){
}
  
