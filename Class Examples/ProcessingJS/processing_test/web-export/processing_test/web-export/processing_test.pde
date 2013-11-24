int gray;
void setup() {
 background(0);
 gray = 127; 
}

void draw() {
  fill(gray);
  ellipse(50,50,50,50);
}

void changeGray(int g) {
   gray = g; 
}



