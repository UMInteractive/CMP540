class State {
   float population;
    int x;
    int y;  
    String name;
   State(float p, String _n) {
    population = p;
    name = _n;
    x = width/2;
    y = height/2;  
 } 
   
   void display() {
      ellipse(x, y, population, population);
   }
}
