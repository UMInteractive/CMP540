class State {
   float population;
    int x;
    int y;  
   State(float p) {
    population = p;
    x = width/2;
    y = height/2;  
 } 
   
   void display() {
      ellipse(x, y, population, population);
   }
}
