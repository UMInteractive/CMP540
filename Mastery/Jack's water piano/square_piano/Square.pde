
class Square {
  float x, y;
  float big = 300;
  float curve = 10;
  float brightness;
  boolean playing;

  
  float colornumber; 


  Square(float _x, float _y) {
    x = _x;
    y = _y;
    colornumber = random(0, 100);
    playing = false;
  }
  
  

  void display() {
    //colornumber = random(0,100);
    if (playing) {
      
      strokeWeight(10);
      stroke(colornumber, brightness, 99);
      fill(colornumber, brightness, 99);
      rect(x, y, big, big, curve);
      //noFill();
      brightness = brightness - 1;
      //println(brightness);
    }  
    if (brightness <= 0) {
      playing = false;
      colornumber = random(0, 100);

    }
  }
  void play() {
    playing = true;
    brightness = 200;
    
  }
}

