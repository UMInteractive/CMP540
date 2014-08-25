class Drum{
  int x;
  int y;
  int radius1;
  int radius2;
  color drumColor;
  
  Drum(int posx, int posy, int d1, int d2){
    x = posx;
    y = posy;
    radius1 = d1;
    radius2 = d2;
    drumColor = color(random(255), random(255), random(255));
  }
  
  void display(){
    noStroke();
    fill(drumColor);
    ellipse(x, y, radius1, radius2);
  } 
}
