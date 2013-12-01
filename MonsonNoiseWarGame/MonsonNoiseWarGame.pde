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

//Type
PFont title;
PFont score;
PFont instructions;

//Game stuff
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

//Start & Play booleans
boolean isStarted = false;
boolean isPlaying = false;

//blinker
boolean blink = true;
int blinkCounter = 0;
int blinkSpeed = 15;

int counter = 200;


void setup() {
  size (800, 600);
  background(0);
  noStroke();
  title = loadFont("MetalLord-Regular-150.vlw");
  score = loadFont("MetalLord-Regular-56.vlw");
  instructions = loadFont("Helvetica-36.vlw");

  //start positions
  x1 = 0;
  x2 = width;

  //pull in audio
  minim = new Minim(this);
  mixerInfo = AudioSystem.getMixerInfo();
  Mixer mixer = AudioSystem.getMixer(mixerInfo[3]);
  minim.setInputMixer(mixer);
  input = minim.getLineIn(Minim.STEREO, 512);
}
void draw() {
  //Start with the start screen  
  if (isStarted=false) {
    startScreen();
  }
  //Play the dang game
  if (isStarted=true) {
   playGame();
    isPlaying=true;
   }
  counter--;
  println(counter);
  if (counter <= 0) {
    isPlaying=false;

    endScreen();
  }
}

void keyPressed() {

    if (isPlaying=false){
    if (key == ' '){
      isStarted=false;
      counter=0;
      startScreen();
      loop();
    }
  }

  //Restart
  /*if (isEnded=true) {
   if (key == ' ') {
   isStarted=false;
   }
   }*/
  //Dummy widths for debugging
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

