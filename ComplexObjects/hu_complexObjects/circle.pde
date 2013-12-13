class Circle{
  PVector location;
  PVector velocity;
  int s1 = 255;
  int s2 = 255;
  int r = 20;
  
  Circle(){
    location = new PVector(random(width), random(height));
    velocity = PVector.random2D();
  }
  
  void display(){
    fill(s1 , 255, s2);
    ellipse(location.x, location.y, r, r);
  }
  
  void run(){
    location.add(velocity);
    if(location.x > width || location.x < 0){
      velocity.x = velocity.x * -1;
    }
    if(location.y > height || location.y < 0){
      velocity.y = velocity.y * -1;
    }
  }
  
  void change(int c1, int c2){
    s1 += c1;
    s2 -= c2;
    
    if(s1 > 255){
      s1 = 100;
    }
    if(s2 < 0){
      s2 = 255;
    }
  }
  
  void after(){
    location.set(random(width), random(height));
  }
  
  void collide(Square square){
    if(location.dist(square.l) < r/2 + square.a/2){
      r += random(1, 1.2);
      change(5, 2);
      velocity.x += 0.002;
      velocity.y += 0.002;
      if(r > 100){
        r = 20;
        s1 = 255;
        s2 = 255;
      }
    }
  }
}
    
    
