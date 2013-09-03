int xPosition = 0;
int value = 0;
int value2 = 50;
int value3 = 0;


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
//change color  
  if (value == 0) {
    value = 255;
  } else {
    value = 0;
  }
  
//change size  
  if (value2 == 50) {
    value2 = 60;
  } else {
    value2 = 50;
  }
  
//change position    
  if (value3 == 0) {
    value3 = 200;
  } else {
    value3 = 0;
  }
}
