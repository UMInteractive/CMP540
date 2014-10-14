//end screen 
void endScreen() {
  
  //FREEEEEEZE!
  noLoop();
  
  //Title
  fill(0);
  rect(0,60,width,height);
  textFont(title, 150);
  textAlign(CENTER);
  if (score1 > score2){
    fill(c1);
    text("YOU WIN!", width/2, height/2);
  }
  if (score2 > score1){
    fill(c2);
    text("YOU WIN!", width/2, height/2);
  }
  if (score2==score1){
    fill(60);
    text("TIE!", width/2, height/2);
  }
  fill(0);
  rect(48,height/2+220, width, 150);
  fill (256,256,256);
  textFont(instructions, 36);
  text("PRESS SPACE TO PLAY AGAIN.", width/2, height/2+250); 
}