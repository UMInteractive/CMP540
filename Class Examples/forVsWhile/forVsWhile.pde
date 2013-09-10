void setup() {
 size(500,500); 
}

void draw() {
  int counter = 100;
  while (counter > 0) {
   ellipse(width/2,height/2, counter, counter);
   counter = counter - 20; 
  }
  
  for(int i = 0; i < 100; i++) {
    rect(i * 2, 40, 20, 20);
  }
  rect(50,50,50,50);
}
