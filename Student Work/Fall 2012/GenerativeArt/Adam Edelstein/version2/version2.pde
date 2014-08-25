// Adam Edelstein
// Generative Art


int sw1 = 15;          // strokeWeight of Horizontal lines
int sw2 = 2;           // strokeWeight of Vertical lines
int frames = 15;       // How quickly the lines are drawn
int lineNumber = 45;   // How many lines are drawn before refresh 
int counter = 0;

// Setup the canvas, set the frameRate, and set background to black
void setup() {
  size(displayWidth, displayHeight);
  frameRate(frames);
  background(0);
}

void draw() {
  strokeWeight(sw1);   // Draw the horizontal lines
  stroke(random(255), random(255), random(255), random(200, 255));
  line(0, random(height), width, random(height)); 
  counter++;

  strokeWeight(sw2);   // Draw the vertical lines 
  stroke(255, random(30, 90));
  line(random(width), 0, random(width), height);
  counter++;
  
            // I liked the idea of random white circles
            // It makes the generation look more like a rave
            // I can take it out if it gives you siezures
  noStroke();
  fill(random(255), random(100, 200));
  ellipse(random(0, width), random(0, height), random(10, 20), random(10,20));
  ellipse(random(0, width), random(0, height), random(10, 20), random(10,20));
  ellipse(random(0, width), random(0, height), random(10, 20), random(10,20));
  counter++;

  
    // If the counter hits 'lineNumber', the screen refreshes.  
    if (counter >= lineNumber) {  
    background(0);
    counter = 0;
   }
 }

