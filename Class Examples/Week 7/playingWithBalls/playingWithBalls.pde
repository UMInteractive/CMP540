//ArrayList<Ball> balls;
ArrayList<HamsterBunch> hamsterBunches;
PImage hamster;
PImage mask;

void setup() {
  size(1000, 500);
  //  balls = new ArrayList<Ball>();
  hamster = loadImage("hamster.jpg");  
  mask = loadImage("hamster-mask.png");
  hamster.mask(mask);

  hamsterBunches = new ArrayList<HamsterBunch>();
}

void draw() {
  //background(0);
  for (int i = 0; i < hamsterBunches.size (); i++) {
    HamsterBunch bunch = hamsterBunches.get(i);
    bunch.display(hamster);
  }
  /*
  for (int i = 0; i < balls.size(); i++) {
   Ball theBall = balls.get(i);
   for (int j = i; j < balls.size(); j++) {
   Ball otherBall = balls.get(j);
   theBall.hitBall(otherBall);
   } 
   }
   */
}

void mousePressed() {
  //   Ball ball = new Ball(mouseX, mouseY);
  //   balls.add(ball); 
  HamsterBunch bunch = new HamsterBunch();
  hamsterBunches.add(bunch);
}

