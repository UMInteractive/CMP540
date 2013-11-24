PImage stache;
float x;
float y;
float stacheWidth;
float stacheHeight;
float stacheScale;
boolean stacheDropped;

void setup() {
  size(500, 500);
  imageMode(CENTER);
  stache = loadImage("the-stache.png");
  stacheWidth = stache.width;
  stacheHeight = stache.height;
  stacheDropped = false;
  stacheScale = .8;
}

void draw() {
  background(255);
  if (stacheDropped == true) {
    image(stache, x, y, stacheWidth, stacheHeight);    
  }
  else {
    image(stache, mouseX, mouseY, stacheWidth, stacheHeight);
  }
}

void keyPressed() {
   if (key == '-') {
      stacheWidth *= stacheScale;
      stacheHeight *= stacheScale;
   } 
   if (key == '+') {
      stacheWidth *= 1.2;
     stacheHeight *= 1.2; 
   }
}
void mouseReleased() {
  x = mouseX;
  y = mouseY;
  stacheDropped = true;
}

