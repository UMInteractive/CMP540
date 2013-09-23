/*Adam Edelstein
  Keyboard_input Exercise
 
 The orb will grow when you click it.
 But don't let it get too big, or darkness will cover all.
    -Release the mouse or click the light to send the darkness back!
 If you click keyboard button:
    -The orb will speak to you you in it's language of color
    -Don't speak with the orb!
*/

// Initialize variables
int x = 200;
int y = 200;
float radius = 20;
float orbGrowth = 0.5; // Speed at which the orb grows
float orbShrink = 1;   // Speed at which the orb shrinks

void setup() {
  size(400, 400);
  smooth();
  ellipseMode(RADIUS);
}

void draw() {
  background(255);
  
// Set the variable 'd' as center of the screen & mouse position
  float d = dist(mouseX, mouseY, x, y); 

// Draw the orb
  ellipse(x, y, radius, radius);

// If 'd' is in the middle of the canvas, and smaller than the radius
// The orb will grow by a factor of 'orbGrowth'
  if (d < radius && mousePressed) {
    radius += orbGrowth;
  } else {   
    radius = constrain(radius - orbShrink, 20, 9999999);
  }

// If a key is pressed, then the orb will change colors
 if (keyPressed) {
    fill(random(255), random(255), random(255), random(255));
  } else {      
    fill(0);
  }
}

