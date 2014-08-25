
class Square {
  float x, y;
  float big = 300;
  float curve = 0;
  float colornumber = 30;
  float brightness = 50;



  Square(float _x, float _y) {
    x = _x;
    y = _y;
    //colornumber = _colornumber;
  }

  void play() {
    colornumber = random(0,100);
    fill(colornumber,brightness,99);
    rect(x,y,big,big,curve);
    
    
  }

}

