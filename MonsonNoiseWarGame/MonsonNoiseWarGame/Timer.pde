class Timer {
  int counter = 200;

  Timer() {
  }
    void display() {
      fill(0);
      rectMode(CENTER);
      rect(width/2, (height/2-50), 200, 150);
      textFont(title, 150);
      textAlign(CENTER);
      fill(60);
      text((counter/5)+1, width/2, height/2);
      rectMode(CORNER);
      textAlign(LEFT);
    }
    
    void count() {
    counter--;
    if (counter <= 0) {
      isPlaying=false;
      isEnded=true;
    }
    }
    void reset(){
      counter=200;
    }

}

