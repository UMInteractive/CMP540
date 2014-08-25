int circleMany = 5;
float [] circleSize = new float [circleMany];
float [] circleXpos = new float [circleMany];
float [] circleYpos = new float [circleMany];

void setup() {
  size(500, 500);
  background(0);
  for (int i=0;i < circleMany; i++) {
    circleSize[i]=random(5, 100);
    circleXpos[i]=random(10, 490);
    circleYpos[i]=random(10, 490);
  }
//  frameRate(4);
}

void draw() {
  fill(random(256),random(256),random(256), 90);
  noStroke();
  smooth();
  for (int i=0;i < circleMany; i++) {
    circleSize[i]=random(5, 200);
    circleXpos[i]=random(10, 490);
    circleYpos[i]=random(10, 490);
    ellipse (circleXpos[i], circleYpos[i], circleSize[i], circleSize[i]);
  }
}

