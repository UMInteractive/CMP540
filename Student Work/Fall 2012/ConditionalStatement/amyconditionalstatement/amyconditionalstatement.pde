// Assignment 2- Conditional Statements
// Amy Peniston

// **** READ ME **** //
// Change variable "changeMe" to alter the location 
// where the color switches from purple to white


void setup() {
  size(500,500);
  background(#000000);
}

void draw() {
  int changeMe = 200;
  
  if (mouseX < changeMe) {
    stroke(#C10CCB);
  } else {
    stroke(#eeeeee);
  }
  
  line(mouseX, 0, pmouseX, 500); 
  
  println("Your mouse is located at " + mouseX + " on the x-axis. MOVE!");
}
