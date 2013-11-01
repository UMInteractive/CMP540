int circleMany = 60;
float [] circleSize = new float [circleMany];

void setup(){
 size(500,500);
 background(0);
 for (int i=0;i < circleMany; i++){
   circleSize[i]=random(5,250);
}
}

void draw() {
  fill(random(256));
  noStroke();
  smooth();
   for (int i=0;i < circleMany; i++){
   circleSize[i]=random(5,250);
  ellipse (width/2, height/2, circleSize[i], circleSize[i]);
}
}

