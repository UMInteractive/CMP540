//Digital Instrument "Brazilian Pandeiro" Mastery
//S. Turner-Smith, graduate student
//Final first-semester project for Interactive Media Masters program using Processing + Arduino
//December 2013

/*
This is aimed at those who enjoy samba. samba_drums.wav taken from http://freesound.org/
The process involved importing the minim library for audio, importing the wav file from the web, 
researching and importing the pandeiro image and setting up the waveforms that show the beats to 
the pandeiro beats. 

I was inspired to create a digital instrument using the constant beats of the pandeiros as I grew up 
in Brazil and we're getting closer to Carnival 2014! 
*/

AudioSample sambadrums;

//Imports Minim library which enables audio
import ddf.minim.*;
Minim minim;
AudioPlayer song;

//Sets up import of image variable called img
PImage img;

//Font
PFont font3;
 
void setup() {
  size(500, 500);
  background(125);
  //Imports image and stores it in the variable img. Pandeiro image taken from http://www.clker.com/clipart-tambourine-riq.html
 img = loadImage ("pandeiro.jpg");
  font3 = createFont("Times-Roman-20", 20);
 
 //Samba audio
   minim = new Minim(this);
  
  //Loads samba_drums.wav from data folder
  sambadrums = minim.loadSample("samba_drums.wav");
 
}

void keyPressed() {
//Plays sambadrums when "space" is pressed. Sounds like Rio's ongoing carnival.
      sambadrums.trigger();
}
 
void draw() {
  background(225);
stroke(0);

  // Sets title and instructions on the screen
 textFont(font3);
  textSize(45);
  fill(0);
  text("Brazilian Samba", 55, 40); 
 line(0, 45, 650, 45);
  text("press spacebar", 55, 480); 

  //Places image on screen
 image(img, width/2, height/2);
 
 stroke(10, 300);
 
 //Code manipulated from http://webcache.googleusercontent.com/search?q=cache:http://processing.org/discourse/beta/num_1276889853.html
  for (int i = 0; i < sambadrums.mix.size()-1; i++)
  {
    line(i, 170- sambadrums.mix.get(i)*50, i+1, 170 - sambadrums.mix.get(i+1)*50);
  

  }
 
}




