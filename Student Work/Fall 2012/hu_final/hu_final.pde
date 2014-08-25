//final project

//import bkg music;
import ddf.minim.*;
import ddf.minim.effects.*;
AudioPlayer player1;
AudioPlayer player2;

Minim minim;
AudioSample button;
AudioSample shoot;

PFont font;
PFont font1;
PImage img;

//button variable
int buttonX = 250;
int buttonY = 270;
int buttonW = 150;
int buttonH = 70;

//count down
int load = 5000;
int startTime;

//level
final int START = 1;
final int LEVEL1 = 2;
final int LEVEL2 = 3;
int state = START;

//score & time
int score = 0;
int time = 59;
boolean start;
int timeLeft;
int sec;

Redball[] redball = new Redball[5];
Greenball[] greenball = new Greenball[5];
Blueball[] blueball = new Blueball[5];

void setup(){

  size(500, 500);
  smooth();
  startTime = millis();
  img = loadImage("boom.png");
  frameRate(40);
  
  //background music
  minim = new Minim(this);
  player1 = minim.loadFile("bkg.mp3");
  
  minim = new Minim(this);
  player2 = minim.loadFile("over.wav");
  
  minim = new Minim(this);
  button = minim.loadSample("button.mp3");
  
  minim = new Minim(this);
  shoot = minim.loadSample("shoot.mp3");
  
  for(int i = 0; i < redball.length; i ++){
    redball[i] = new Redball(random(width), random(height), 0.6, 0.6);
  }
  
  for(int i = 0; i < greenball.length; i ++){
    greenball[i] = new Greenball(random(width), random(height), 1, 1);
  }
  
  for(int i = 0; i < blueball.length; i ++){
    blueball[i] = new Blueball(random(width), random(height), 1.5, 1.5);
  }
}

void draw(){
  background(255);

   switch (state){
     
    case START:
      welcome();
       break;
       
    case LEVEL1:
    
    if(millis() - startTime > load){
       
      button.stop();
      
      if(!player1.isPlaying()){
        player1.play();
        player1.rewind();
      }
      
      //count down
      if(!start){
        time = floor(61 - (millis()- 5000 - sec)*.001);
        cursor(CROSS);
        
        for(int i = 0; i < redball.length; i ++){
        redball[i].display();
        redball[i].run();
        redball[i].target();
        redball[i].explode();
        }
        
        if(score >= 50){
          for(int i = 0; i < greenball.length; i ++){
            greenball[i].display();
            greenball[i].run();
            greenball[i].explode();
            greenball[i].target();
          }
        }
        
        if(score >= 150){
          for(int i = 0; i < blueball.length; i ++){
            blueball[i].display();
            blueball[i].run();
            blueball[i].explode();
            blueball[i].target();
          }
        }
        
        if(score >= 300){
         if(time <= 10 && time > 0){
           score = 300;
           noLoop();
           over();
           cursor(ARROW);
         }
         if(time <= 20 && time > 10){
           score = 300 + 100;
           noLoop();
           over();
           cursor(ARROW);
         }
         if(time <= 30 && time > 20){
           score = 300 + 200;
           noLoop();
           over();
           cursor(ARROW);
         }
         if(time <= 40 && time > 30){
           score = 300 + 300;
           noLoop();
           over();
           cursor(ARROW);
         }
         if(time <= 50 && time > 40){
           score = 300 + 400;
           noLoop();
           over();
           cursor(ARROW);
         }
         if(time <= 60 && time > 50){
           score = 300 + 500;
           noLoop();
           over();
           cursor(ARROW);
         }
        } 
        
        if(time <= 0 && score < 300){
         fail();
        if(!player2.isPlaying()){ 
         player2.play();
        }
         time = 0; 
         cursor(ARROW);
        }
      
      //set score and time position
      font1 = loadFont("SynchroLET-48.vlw");
      textFont(font1, 25);
      fill(135, 206, 250);
      text("SCORE:" + score, 10, 30);
      text("TIME:00:" + time, 360, 30); 
      }
    } else {
      instruction();
    } 
    break;
  }
}

void mousePressed(){
  //click start button to begin the game
  button.trigger();
  if(state == START && onButton()){
    state = LEVEL1;   
    return;
  }
}
  
void welcome(){
  
  //background
  noStroke();
  fill(135, 206, 250);
  rect(0, 0, width, height);
  
  //title
  fill(255);
  font = loadFont("IM_FELL_English_SC-48.vlw");
  textFont(font, 60);
  text("CATCHING", 100, 120);
  text("BALLS", 150, 200);
  
  //start button
  noStroke();
  fill(255);
  ellipse(buttonX, buttonY, buttonW, buttonH);
  textFont(font, 35);
  fill(135, 206, 250);
  text("START", 190, 280);
  
}

void instruction(){
   
  noStroke();
  fill(135, 206, 250);
  rect(0, 0, width, height); 
  font = loadFont("IM_FELL_English_SC-48.vlw");
  fill(255);
  textFont(font, 35);
  text("Catching the ball", 80, 60);
  textFont(font, 20);
  text("click the ball to catch", 60, 100);
  
  //ball with text
  textFont(font, 20);
  noStroke();
  fill(255, 0, 0);
  ellipse(60, 130, 20, 20);
  fill(255);
  text("red ball: 10 points", 85, 135);
  fill(46, 139, 87);
  ellipse(60, 170, 20, 20);
  fill(255);
  text("Green ball: 20 points", 85, 175);
  fill(0, 0, 255);
  ellipse(60, 210, 20, 20);
  fill(255);
  text("Blue ball: 30 points", 85, 215);
  
  text("you should get 300 points in 60 seconds", 60, 255);
  //text("try to get more than 300 points in 60 seconds", 60, 280); 
  
  textFont(font, 50);
  fill(255);
  text("GOOD LUCK!", 80, 360);
}

boolean onButton(){
  int mw = buttonW/2;
  int mh = buttonH/2;
  return mouseX >= buttonX - mw && mouseX <= buttonX + mw &&
         mouseY >= buttonY - mh && mouseY <= buttonY + mh;
}

void over(){
  //background
  noStroke();
  fill(135, 206, 250);
  rect(0, 0, width, height);
  
  textFont(font, 30);
  fill(255);
  text("Congradulations!", 130, 180);
  text("You got " + score + " points!", 130, 240);
}

void fail(){
  noStroke();
  fill(135, 206, 250);
  rect(0, 0, width, height);
  
  textFont(font, 50);
  fill(255);
  text("Game Over",  180, 180);
  text("Try again!", 130, 240);
}




