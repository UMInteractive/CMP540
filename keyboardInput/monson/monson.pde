int xPosition = 0;
int value = 0;
int value2 = 50;
int value3 = 0;
boolean onTop=true;

void setup() {
size(500,500);
}

void draw() {
  fill(0,255,0); 
  rect(0, 0, width, height);
  fill(value);
  
// rectangles
  noStroke();
  rect(xPosition, 40+value3, value2, value2);
  rect(xPosition+50, 40+50+value3, value2, value2);
  rect(xPosition+100, 40+value3, value2,value2);
  xPosition++;
  if (xPosition ==550) {
     xPosition = 0; 
  }
}

void keyPressed() {
if (onTop) {
 onTop = false;
 value = 255;
 value2 = 60;
 value3 = 300;
}
else {
 onTop = true;
 value = 0;
 value2 = 50;
 value3 = 0;
}
}
