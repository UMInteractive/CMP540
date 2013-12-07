//digital instrument

import ddf.minim.*;

AudioPlayer player;
Minim minim;

AudioSample kick;
AudioSample tom1;
AudioSample tom2;
AudioSample tom3;
AudioSample hat;
AudioSample snr;
AudioSample trash;

Drum drum1;
Drum drum2;
Drum drum3;
Drum drum4;
Drum drum5;
Drum drum6;
Drum drum7;

PFont font;
float h = 470;

void setup(){
  size(500, 500);
  smooth();
  
  //load the background music
  minim = new Minim(this);
  player = minim.loadFile("tune1.mp3");
  
  //load the drum sample
  minim = new Minim(this);
  kick = minim.loadSample("kick");
  tom1 = minim.loadSample("tom1");
  tom2 = minim.loadSample("tom2");
  tom3 = minim.loadSample("tom3");
  snr = minim.loadSample("snr");
  trash = minim.loadSample("trash");
  hat = minim.loadSample("hat");
  
  //set the position of the drums
  drum1 = new Drum(80, 150, 100, 40);
  drum2 = new Drum(420, 150, 100, 40);
  drum3 = new Drum(80, 330, 80, 80);
  drum4 = new Drum(250, 350, 230, 230);
  drum5 = new Drum(140, 250, 100, 100);
  drum6 = new Drum(250, 200, 100, 100);
  drum7 = new Drum(360, 250, 100, 100);
}

void draw(){
  background(0);
  fill(255, 255, 0);
  font = loadFont("Chalkboard-Bold-48.vlw");
  textFont(font, 30);
  text("Druming for the music", 80, 40);
  textFont(font, 20);
  text("S:start", 20, h);
  text("P:pause", 100, h);
  
  //set the music
  if(keyPressed = true){
    if(key == 's' || key == 'S'){
      h += 1.5;
      player.play();
    }
    if(key == 'p' || key == 'P'){
      player.pause();
    }
  }
  
  //draw the drums
  stroke(255, 255, 25);
  strokeWeight(5);
  line(80, 150, 140, 350);
  line(420, 150, 350, 350);
  drum1.display();
  drum2.display();
  drum3.display();
  drum4.display();
  drum5.display();
  drum6.display();
  drum7.display(); 
  
  fill(255, 255, 0);
  textFont(font, 15);
  text("spacebar", 50, 330);
  text("UP", 243, 200);
  text("DOWN", 230, 350);
  text("LEFT", 125, 250);
  text("RIGHT", 335, 250);
  text("G", 75, 152);
  text("H", 417, 152);
}

void keyPressed(){
  if(key == CODED){
  if(keyCode == UP){
    tom2.trigger();
  }
  if(keyCode == DOWN){
    kick.trigger();
  }
  if(keyCode == LEFT){
    tom1.trigger();
  }
  if(keyCode == RIGHT){
    tom3.trigger();
  }
  }
  if(key == ' '){
    snr.trigger();
  }
  if(key == 'g' || key == 'G'){
    hat.trigger();
  }
  if(key == 'h' || key == 'H'){
    trash.trigger();
 }
}
    
