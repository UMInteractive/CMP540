// Assignment 3
// Amy Peniston

color greeny = #22AF29 ;
color bluey = #1B86CB;
int count = 0;
  
void setup() {
  size(800,800);
  background(#000000);
  fill(greeny);
  stroke(bluey);

}

void draw() {
  
  // Periodically refresh screen
  if (count > 5000) {
    count = 0;
    background(#000000); 
    
  }
  
  // Remove cursor
  noCursor();
  
  // Draw tons of ellipses at random locations whose width and 
  // height depend on the location of the mouse
  for (int i = 1; i < 50; i++) {
    count ++;
    ellipse(random(800),random(800),mouseX,mouseY); 
  }
  
}
