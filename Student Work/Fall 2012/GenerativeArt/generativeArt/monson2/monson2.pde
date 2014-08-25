float y;
int x;

void setup() {
  size(displayWidth, displayHeight);
  frameRate(10);
  int x = 0;
  y = height;
  background(255);

}

void draw() {
  noStroke();
  fill(random(0, 255), random(0,255), random(0,255), 30);
  ellipse(x,y,300,300);  

//move vertical  
  y = y - 50;
  if (y < 0) { 
  y = height;
  }
//move horizontal  
  x = x+250;
  if (x > displayWidth){
  x = 0;
  }   
    
}
