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
int xDirection1 = 5;
int xDirection2 = -5;
float y1;
float y2;
color c1 = color(255, 0, 0);
color c2 = color(0, 0, 255);
int w1 = 10;
int w2 = 10;
int score1 = 0;
int score2 = 0;

//Start & Play & End booleans
boolean isPlaying;
boolean isEnded;

//blinker
boolean blink = true;
int blinkCounter = 0;
int blinkSpeed = 15;

//counter
int time = 100;
int counter;


void setup() {
  size (900, 900);
  background(0);
  noStroke();
  title = loadFont("MetalLord-Regular-150.vlw");
  score = loadFont("MetalLord-Regular-56.vlw");
  instructions = loadFont("Helvetica-36.vlw");
  
  //set swtiches
  isPlaying=false;
  isEnded=false;


 
  //pull in audio
  minim = new Minim(this);
  mixerInfo = AudioSystem.getMixerInfo();
  Mixer mixer = AudioSystem.getMixer(mixerInfo[3]);
  minim.setInputMixer(mixer);
  input = minim.getLineIn(Minim.STEREO, 512);
}
void draw() {
 
  
  //Start with the start screen  
  if (!isPlaying && !isEnded){  
    fill(0);
    rect(0,0,width,height); 
    startScreen();
    counter=time;
    //start positions
    x1 = 0;
    x2 = width;
    score1=0;
    score2=0;
    w1=10;
    w2=10;
    return;
  }
    
  //Play the dang game
  if (isPlaying) {
    playGame();
   
  }
  if (isEnded) {
    endScreen();
    counter=time;
    return;
  }
}

void keyPressed() {
  //switching with spacebar
if (key == ' ') {
  if (!isPlaying){
      fill(0);
      rect(0,0,width,height);
      isPlaying = true;
      }

  if (isEnded == true) {
    loop(); 
    isEnded=!isEnded;
    isPlaying=!isPlaying;

    }
  }

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

