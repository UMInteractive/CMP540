class Pad {
  
  color padColor;
  int x;
  int y;
  int padHeight;
  int padWidth;
  
  Pad(int _x, int _y) {
    x = _x;
    y = _y;
    padHeight = 100;
    padWidth = 100;
    padColor = color(0, 0, 17);
  }
  
  void display() {
   fill(padColor);
   rect(x, y, padWidth, padHeight); 
  }
}    
    
