boolean show_circle;


void setup() {
  size(200,200);
  show_circle = true;
}

void draw() {
  if (show_circle == true) {
     ellipse(10,10,10,10); 
  }
}

