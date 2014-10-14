class Box {
 int x;
 int y; 
 
  Box(int anythingYouWant, int _y) {
    x = anythingYouWant;
    y = _y;
  }
  
  void display() {
   rect(x, y, 50, 50); 
  }
}
