class Redball{
  float x;
  float y;
  float v1;
  float v2;
  int r = 50;
  
  Redball(float _x, float _y, float _v1, float _v2){
    x = _x;
    y = _y;
    v1 = _v1;
    v2 = _v2;
  }
  
  void display(){
    stroke(255);
    strokeWeight(3);
    fill(255, 0, 0);
    ellipse(x, y, r, r);
  }
  
  void run(){
    x += v1;
    y += v2;
    
    if(x > width - 30){
      v1 *= -1;
      x = width - 30;
    }
    if(x < 40){
      v1 *= -1;
      x = 40;
    }
    if(y > height - 30){
      v2 *= -1;
      y = height -30;
    }
    if(y < 70){
      v2 *= -1;
      y = 70;
   }
  }
  
  void explode(){
    if(mousePressed == true){
      if(dist(mouseX, mouseY, x, y) < 25 &&
      dist(mouseX, mouseY, x, y) > 0 &&
      mouseButton == LEFT){
        score += 10;
        r = 0;
        shoot.trigger();
        image(img, mouseX, mouseY, 100, 100);
    }
   }
  }
 
 void target(){
   if(dist(mouseX, mouseY, x, y) < 25 &&
   dist(mouseX, mouseY, x, y) > 0){
     fill(80, 80);
     ellipse(mouseX, mouseY, 70, 70);
     fill(255, 80);
     ellipse(mouseX, mouseY, 35, 35);
  }
 }
}


