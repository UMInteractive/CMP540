class Greenball{
  float x;
  float y;
  float v1;
  float v2;
  int r = 40;
  
  Greenball(float _x, float _y, float _v1, float _v2){
    x = _x;
    y = _y;
    v1 = _v1;
    v2 = _v2;
  }
  
  void display(){
    stroke(255);
    strokeWeight(3);
    fill(46, 139, 87);
    ellipse(x, y, r, r);
  }
  
  void run(){
    x -= v1;
    y -= v2;
    
    if(x > width - 20){
      v1 *= -1;
      x = width - 20;
    }
    if(x < 30){
      v1 *= -1;
      x = 30;
    }
    if(y > height - 20){
      v2 *= -1;
      y = height -20;
    }
    if(y < 60){
      v2 *=-1;
      y = 60;
   }
  }
  
  void explode(){
    if(mousePressed == true){
      if(dist(mouseX, mouseY, x, y) < 20 &&
      dist(mouseX, mouseY, x, y) > 0 &&
      mouseButton == LEFT ){
        score += 20;
        r = 0;
        shoot.trigger();
        image(img, mouseX, mouseY, 100, 100);
      }
    }
  }
  
   void target(){
   if(dist(mouseX, mouseY, x, y) < 20 &&
   dist(mouseX, mouseY, x, y) > 0){
     fill(80, 80);
     ellipse(mouseX, mouseY, 60, 60);
     fill(255, 80);
     ellipse(mouseX, mouseY, 35, 35);
  }
 }
}


