boolean show_circle;
boolean show_square;

void setup() {
  size(200,200);
  show_square = true;
  show_circle = false;
}

void draw() {
  if (show_circle) {
     ellipse(10,10,10,10); 
  }
  if (show_square) {
    rect(10,10,10,10);
  }
  if (show_circle || show_square) {
     println("I'm showing at least one of them, not sure which one"); 
  }
}

