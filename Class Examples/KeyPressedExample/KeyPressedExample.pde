
void setup() {
}

void draw() {
}

void keyPressed() {
  switch(key) {
  case 'A':
    println("A");
    break;
  case 'B':
    println("B");
    break;
  case 'C':
    println("C");

    break;
  }

  if (key == 'a' || key == 'A') {
    println("you pressed a");
  }
  if (key == 'A') {
    println("you pressed A");
  }
  
  if (keyCode == UP) {
     println("Going up!"); 
  }
}

void keyReleased() {
  println("You released the key");
}

void keyTyped() {
  println(key);
}

