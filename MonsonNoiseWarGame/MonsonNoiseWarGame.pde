import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;
import javax.sound.sampled.*;


Minim minim;
AudioInput input;
Mixer.Info[] mixerInfo;

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
  mixerInfo = AudioSystem.getMixerInfo();
  Mixer mixer = AudioSystem.getMixer(mixerInfo[3]);
  minim.setInputMixer(mixer);
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
  //  strokeWeight(w1);
  //  stroke(c1);
  //  line(x1,height,x1,y1);

  //Player 2  
  if (x2>width || x2<0) {
    xDirection2*=-1;
  }
  x2+=xDirection2;
  y2 = map(input.right.level(), 0, .6, height, 0);

  fill(c2);
  ellipse(x2, y2, w2, w2);
  //  strokeWeight(w2);
  //  stroke(c2);
  //  line(x2,height,x2,y2);

  //Scoring
  score1 = 0;
  score2 = 0; 
  loadPixels();
  for (int i=0; i < (width); i++) {
    for (int j=0; j<height; j++) {
      if (get(i, j) == c1) {
        score1++;
      }
      if (get(i, j) == c2) {
        score2++;
      }
    }
  }
  println(score1/1000);
  println(score2/1000);
  //println(mixerInfo);
}
//Dummy data
void keyPressed() {
  if (key == '1') {
    w1+=10;
  }
  if (key == '2') {
    w2+=10;
  }
  if (key == '0') {
    w2 = 10;
    w1 = 10;
  }
}


void stop() {
  //close those minim audio classes, yo
  input.close();
  minim.stop();
  super.stop();
} 

