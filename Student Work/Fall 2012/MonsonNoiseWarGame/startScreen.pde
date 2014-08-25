//Start screen 
String noize = "NOIZE";

void startScreen() {
  isPlaying=false;
  isEnded=false;
  

  rectMode(CENTER);
  //Title
  textFont(title, 150);
  fill(c1);
  text(noize, width/2-(noize.length()*80), height/2);
  fill(c2);
  text("WARZ", (width/2), height/2);

  textAlign(CENTER);
  //Instructions
  textFont(instructions, 24);
  fill(256, 256, 256);
  text("MAKE. SOME. NOISE. Use volume to paint the screen your color.", width/2, height/2+100);
  text("Cover more area than your opponent before time runs out.", width/2, height/2+150);

  //Make this blink like old-school arcade shiz.
  fill(0);
  rect(width/2,height/2+250, width, 150);
  fill(256,256,256);
  blinkCounter++;
  if (blinkCounter % blinkSpeed == 0) { 
    blink = !blink; 
      }
      if (blink){
      fill (256,256,256);
      textFont(instructions, 36);
      text("PRESS SPACE TO START.", width/2, height/2+250);
    }
  textAlign(LEFT);
  rectMode(CORNER);
    
}
