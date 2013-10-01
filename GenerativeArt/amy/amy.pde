// A trippy black and white generative art program
// Try moving and clicking the mouse for different effects

float angle = 0.0;
color from = #5FFF60;
color to = #5FFFFB;
float counter = 0;
float x = 0;
float y = 0;
int step = 1;

void setup() {
  size(400,400);
  smooth();  
  background(0);
  ellipseMode(CENTER);
}

void draw() {
  
  counter = counter + .01;
  if (counter >= 1) {
    counter = 0;
  }
  
  translate(mouseX, mouseY);
  rotate(angle);
  
  color current = lerpColor(from,to,counter);
  
  if (mousePressed){
    
    fill(current,100);
    stroke(255);
    rect(-15,-15,30,30);  
  } 
  
  else {

    fill(255);
    stroke(0);
    rect(-15,-15,30,30);
    rect(x,x+5,y,y+5);
    step++;
    x = x + step;
    y = x + step;
    
    if (x > width) {
      x = 0;
      y = 0;
      step = 0;
    }
  }
  
  angle += 0.1;
}
