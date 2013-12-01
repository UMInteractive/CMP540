//Start screen 
void startScreen() {
  //Title
  textFont(title, 150);
  fill(c1);
  text("NOIZE", 50, height/2);
  fill(c2);
  text("WARZ", 450, height/2);

  //Instructions
  textFont(instructions, 24);
  fill(256, 256, 256);
  text("MAKE. SOME. NOISE. Use volume to paint the screen your color.", 50, height/2+100);
  text("You have 60 seconds to cover more area than your opponent.", 50, height/2+150);

  //Make this blink like old-school arcade shiz.
  fill(0);
  rect(48,height/2+220, width, 150);
  fill(256,256,256);
  blinkCounter++;
  if (blinkCounter % blinkSpeed == 0) { 
    blink = !blink; 
      }
      if (blink){
      fill (256,256,256);
      textFont(instructions, 36);
      text("PRESS SPACE TO START.", 50, height/2+250);
    }
    
}
