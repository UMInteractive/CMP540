
void setup() {
  size(500, 500, P2D);
}

void draw() {
//for loop  
  for (int x = 0; x < width; x = x + 5) {
    
    for (int y = 0; y < height; y = y + 5) {
     ellipse(x, y, 3, 3); 
    }
  
  }

}


