void setup(){
size(500,500);
}

void draw(){
  fill(0,256,0);
  noStroke();
  rect (30,30,440,440);
  stroke(0,0,256);
  line(30,30,470,470);
  line(30,470,470, 30);
  fill(256,0,0);
  noStroke();
  ellipse(30,30,60,60);
  ellipse(470,30,60,60);
  ellipse(30,470,60,60);
  ellipse(470,470,60,60);


}

