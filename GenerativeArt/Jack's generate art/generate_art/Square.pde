class Square {
  float x, y;
  float colornumber;
  float big = random(1,100);




  Square() {
    x = random(0, width);
    y = random(0, height);
    colornumber = random(0, 100);
  }


  void display() {
    noStroke();
    fill(colornumber, 50, 99);
    rect(x, y, big, big,20);
  }


  void play() {
    if (dist(x, y, mouseX, mouseY)>= 200) {
      fill(colornumber, 50, 99);
      rect(x, y, big, big,20);
      if(mousePressed){
      x = (x + mouseX)/5*4 + random(-10, 10);
      y = (y + mouseY)/5*4 + random(-10, 10);
      }
    }
      
        
      
      
    
  }
}

