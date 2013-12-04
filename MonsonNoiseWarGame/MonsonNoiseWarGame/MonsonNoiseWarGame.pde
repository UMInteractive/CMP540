import oscP5.*;
import netP5.*;

OscP5 oscP5;

//pull in the osc data
float p1 = 0;
float p2 = 0;

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
int xDirection1 = 5;
int xDirection2 = -5;
float y1;
float y2;
color c1 = color(256, 0, 0);
color c2 = color(0, 0, 256);
int w1 = int(p1*10);
int w2 = int(p2*10);
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
 
  /* start oscP5, listening for incoming messages at port 12345 */
  oscP5 = new OscP5(this, 12345);
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
      textFont(score, 50);
      textAlign(CENTER);
      fill(256,256,256);
      text(countdown, width/2, 50);
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

}


/* incoming osc message are forwarded to the oscEvent method. */
void oscEvent(OscMessage theOscMessage) {
  /* print the address pattern and the typetag of the received OscMessage */
  print("### received an osc message.");
  //our address ia /player/
  if (theOscMessage.checkAddrPattern("/player")==true) {
    /* check if the typetag is the right one. */
    //the first message we send is an integer (player number)
    //the second message is a float (player power)
    //the type then is if as in "i"nteger "f"loat
    if (theOscMessage.checkTypetag("if")) {
      //we get the arguments and can define the type of value it is
      int player = theOscMessage.get(0).intValue();
      float power = theOscMessage.get(1).floatValue();  
      println("Player " + player + " : " + power);
      //assign the incoming volume power to the player variables
      if (player == 1) {
          p1 = power;
      } 
      if (player == 2) {
         p2 = power; 
      }
    }
  }
}

