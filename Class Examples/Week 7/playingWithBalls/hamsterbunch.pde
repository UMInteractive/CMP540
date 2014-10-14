class HamsterBunch {
  Ball hamsters[];
  
  HamsterBunch() {
     hamsters = new Ball[10];
     for (int i = 0; i < 10; i++) {
        hamsters[i] = new Ball(random(width), random(height));
     } 
  }
 
  void display(PImage hamster) {
   for (int i = 0; i < 10; i++) {
      hamsters[i].display(hamster); 
   }
  }   
}
