// S. Turner-Smith
// Looped Shape Practice 3

float x = 0;

void setup() {
  size(200, 200);  
  stroke(255);     

  //line
  x = width * 0.5;
}

void draw() { 
  background(#441FB4);   
  line(x, 0, x, height);  

  x = x + .1*50; 
  if (x > width) { 
    x = 0;

}

}

