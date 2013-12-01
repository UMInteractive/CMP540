

void startScreen(){
  myTimer.reset();
  
  //declare title string for responsive positioning
  String noize = "NOIZE";
  
  //start positions
  x1 = 0;
  x2 = width;
  score1=0;
  score2=0;
  w1=30;
  w2=30;

  //Title

  textFont(title, 150);
  fill(c1);
  text(noize, width/2-(noize.length()*80), height/2);
  fill(c2);
  text("WARZ", (width/2), height/2);

  //Instructions
  textAlign(CENTER);
  textFont(instructions, 24);
  fill(256, 256, 256);
  text("MAKE. SOME. NOISE. Use volume to paint the screen.", width/2, height/2+100);
  text("Cover more area than your opponent before time runs out.", width/2, height/2+150);

  //Blinky start line like old-school arcade shiz.
  blinkCounter++;
  if (blinkCounter % blinkSpeed == 0) { 
    blink = !blink;
  }
  rectMode(CENTER);
  fill (256, 256, 256);
    textFont(instructions, 36);
    text("PRESS SPACE TO START.", width/2, height-150);
  
  if (blink) {
    fill(0);
    rect(width/2, height-200, width, 150);
  }
  //reset
  textAlign(LEFT);
  rectMode(CORNER);
 
}
