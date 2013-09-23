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
  println("PRESSED " + key); 
}

void keyReleased() {
 println("RELEASED " + key); 
}

void keyTyped() {
// println(key); 
}
