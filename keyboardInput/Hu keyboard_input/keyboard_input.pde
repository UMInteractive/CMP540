//keyboard input

color []change = {#FFFF33, #FF9999, #FF6600, #CCFF00};
String write = "PRESS UP OR DOWN ARROW TO MAKE CHANGES.";
String mouse = "PRESS MOUSE TO GO BACK ORIGIN.";
int d = 250;
int a = 400;
PFont font;

void setup(){
  size(500, 600);
  smooth();
  rectMode(CENTER);
}

void draw(){
  background(0);
  noStroke();
  
  font = loadFont("FingerPaint-Regular-48.vlw");
  textFont(font, 18);
  fill(255);
  text(write, 30, 30);
  text(mouse, 30, 60);
  
  //draw a rectangle
  fill(change[1]);
  rect(width/2, height/2, a, a);
  
  //draw a circle
  fill(change[0]);
  ellipse(width/2, height/2, d, d);
}

void keyPressed(){
  if(key == CODED){
    if(keyCode == UP){
    a -= 20;
    d += 10;
      } else if (keyCode == DOWN){
        a += 20;
        d -= 10;
    }
  }
}

void mousePressed(){
  a = 400;
  d = 250;
  }
  
  
  
  
