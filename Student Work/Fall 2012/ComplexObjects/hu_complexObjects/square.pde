class Square{
  PVector l;
  PVector v;
  float a = 50;
  
  Square(){
    l = new PVector(random(width), random(height));
    v = new PVector(random(-1, 1), random(-1, 1));
  }
  
  void display(){
    noStroke();
    fill(255, 255, 0);
    rect(l.x, l.y, a, a);
  }
  
  void wander(){
    l.add(v);
    if(l.x > width || l.x < 0){
      v.x = v.x * -1;
    }
    if(l.y > height || l.y < 0){
      v.y = v.y * -1;
    }
  }
}
