class Ball {

  float speedX;
  float speedY;
  float diameter;
  float x;
  float y;
//  PImage hamster;
//  PImage mask;
  
  Ball(float _x, float _y) {
    x = _x;
    y = _y;
    speedX = random(-1,1);
    speedY = random(-1,-5);
    diameter = random(40,100);
//    hamster = loadImage("hamster.jpg");  
//    mask = loadImage("hamster-mask.png");
//    hamster.mask(mask);
}  

  void display(PImage hamster) {
      fill(255, 50);
      image(hamster, x, y);
//     ellipse(x,y, diameter, diameter);
     x = x + speedX;
     y = y + speedY;
     if (x > width || x < 0) {
        speedX = speedX * -1; 
     }
     
     if (y > height || y < 0) {
        speedY = speedY * -1; 
     }
  }
  
  void hitBall(Ball otherBall) {
    if (dist(x, y, otherBall.x, otherBall.y) <= diameter) {
         println("Wow, I was hit!");
         speedX = speedX * -1;
         speedY = speedY * -1;
         otherBall.speedX = 0;
         otherBall.speedY = 0;
    }
  }
  
}
