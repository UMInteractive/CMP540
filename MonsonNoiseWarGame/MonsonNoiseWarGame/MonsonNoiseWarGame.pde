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

//set up blinker
boolean blink = true;
int blinkCounter = 0;
int blinkSpeed = 15;

//Game play vars
float x1;
float x2;
int xDirection1 = 20;
int xDirection2 = -20;
float y1;
float y2;
color c1 = color(244, 115, 33);
color c2 = color(0, 80, 48);
int w1 = 50;
int w2 = 50;
int score1 = 0;
int score2 = 0;


//Play & End booleans
boolean isPlaying;
boolean isEnded;

//THE FINAL COUNTDOWN 
int gameLength = 31*1000;
int startTime;
int endTime;
int timeElapsed;
int countdown;

void setup() {
  size (displayWidth, displayHeight);
  background(0);
  noStroke();
  title = loadFont("MetalLord-Regular-150.vlw");
  score = loadFont("MetalLord-Regular-56.vlw");
  instructions = loadFont("Helvetica-36.vlw");
    
  //Initial switches
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
  //Clear
  fill(0);
  rect(0,0,width,height);
  //run startScreen  
    startScreen();
    return;
  }
    
  //Play the dang game
  if (isPlaying) {
    playGame();
    timeElapsed = (millis()-startTime);
    countdown = (gameLength-timeElapsed)/1000;
    //display countdown
      fill(0);
      rectMode(CENTER);
      rect(width/2, (height/2-50), 200, 150);
      textFont(title, 150);
      textAlign(CENTER);
      fill(60);
      text(countdown, width/2, height/2);
      rectMode(CORNER);
      textAlign(LEFT);
    if (countdown==0){
      isPlaying=!isPlaying;
      isEnded=true;
    }
    return;  
  }
  if (isEnded) {
    endScreen();
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
      startTime = millis();
      endTime = startTime+gameLength;
      }

  if (isEnded == true) {    
    isEnded=!isEnded;
    isPlaying=!isPlaying;
    loop(); 
    }
  }
/*
  //Dummy widths for debugging
  if (key == '1') {
    w1+=50;
  }
  if (key == '2') {
    w2+=50;
  }
  if (key == '0') {
    w2 = 10;
    w1 = 10;
  }
*/
}


void stop() {
  //close those minim audio classes, yo
  input.close();
  minim.stop();
  super.stop();
} 

