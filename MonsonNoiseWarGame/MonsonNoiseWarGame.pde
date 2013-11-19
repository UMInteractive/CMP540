import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

Minim minim;
AudioInput input;
float x1;
float x2;
int xDirection1 = 1;
int xDirection2 = -1;
float y1;
float y2;
color c1 = color(255, 0, 0);
color c2 = color(0, 0, 255);
int w1 = 10;
int w2 = 10;
int score1 = 0;
int score2 = 0;

void setup() {
  size (500, 500);
  x1 = 0;
  x2 = width;
  background(0);
  noStroke();
  minim = new Minim(this);
  input = minim.getLineIn(Minim.STEREO, 512);

}
void draw() {

//Player 1
  if (x1>width || x1<0) {
    xDirection1*=-1;
  }
  x1+=xDirection1;
  y1 = map(input.left.level(), 0, .6, height, 0);
  fill(c1);
  ellipse(x1, y1, w1, w1);
  
//Player 2  
  if (x2>width || x2<0) {
    xDirection2*=-1;
  }
  x2+=xDirection2;
  y2 = map(input.right.level(), 0, .6, height, 0);
  fill(c2);
  ellipse(x2, y2, w2, w2);

//Scoring
  loadPixels();
  for (int i=0; i < (width*height); i++){
    if (pixels[i] == c1){
      score1++;
    }
    if (pixels[i] == c2){
      score2++;
    }
  }
  println(score1/1000);
  println(score2/1000);
}



void stop() {
  //close those minim audio classes, yo
  input.close();
  minim.stop();
  super.stop();
} 

