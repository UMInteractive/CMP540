class Blueball{
  float x;
  float y;
  float v1;
  float v2;
  int r = 30;
  
  Blueball(float _x, float _y, float _v1, float _v2){
    x = _x;
    y = _y;
    v1 = _v1;
    v2 = _v2;
  }
  
  void display(){
    stroke(255);
    strokeWeight(3);
    fill(0, 0, 255);
    ellipse(x, y, r, r);
  }
  
  void run(){
    x += v1;
    y -= v2;
    
    if(x > width - 15){
      v1 *= -1;
      x = width - 15;
    }
    if(x < 20){
      v1 *= -1;
      x = 20;
    }
    if(y > height - 20){
      v2 *= -1;
      y = height -20;
    }
    if(y < 50){
      v2 *= -1;
      y = 50;
   }
  }
  
  void explode(){
    if(mousePressed == true){
      if(dist(mouseX, mouseY, x, y) < 15 &&
      dist(mouseX, mouseY, x, y) > 0 &&
      mouseButton == LEFT ){
        score += 30;
        r = 0;
        shoot.trigger();
        image(img, mouseX, mouseY, 100, 100);
      }
    }
  }
     void target(){
   if(dist(mouseX, mouseY, x, y) < 15 &&
   dist(mouseX, mouseY, x, y) > 0){
     fill(80, 80);
     ellipse(mouseX, mouseY, 50, 50);
     fill(255, 80);
     ellipse(mouseX, mouseY, 35, 35);
  }
 }
}


