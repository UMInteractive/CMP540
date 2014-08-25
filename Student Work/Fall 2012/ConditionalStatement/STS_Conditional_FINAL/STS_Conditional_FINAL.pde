//Conditional Statement
//S Turner-Smith

// Ellipse moving across screen, changing colours according to placement of mouse
// Condition = If mouse is at greater than 100 (x), then ellipse changes from red to purple

int x = 10;
int speed = 1;

void setup() {
  size(500, 500);
  smooth();
}

void draw() {
background (0);
  if  (mouseX > 100) {
    fill(#D81118);
    ellipse(x, 46, 55, 55);
  } else {
    fill(#A558A4); 
    ellipse(x, 46, 55, 55);

  }
x = x + speed; 
}


