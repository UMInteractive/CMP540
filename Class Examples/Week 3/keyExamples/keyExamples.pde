void setup() {
  
}

void draw() {

}

void keyPressed() {
  if (keyCode == UP) {
   println("Going up!"); 
  }
  if (keyCode == DOWN) {
   println("Going down!"); 
  }
  
  if (keyCode == RIGHT) {
    
  }
  
  if (keyCode == LEFT) {
    
  }
  
  if (keyCode == SHIFT) {
    
  }
  println("PRESSED " + key); 
}

void keyReleased() {
 println("RELEASED " + key); 
}
//gets only "visible" keys
void keyTyped() {
 println("typed " + key); 
}
