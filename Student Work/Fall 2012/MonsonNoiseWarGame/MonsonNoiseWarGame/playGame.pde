void playGame() {
  
  textAlign(CENTER);
  String message1 = "NOIZEWARZ";
  String message2 = "NOIZEWARZ";

  //Player 1

  if (x1>width || x1<0) {
    xDirection1*=-1;
  }
  x1+=xDirection1;
  y1 = map(p1, 0, 1, height, 40);
  fill(c1);
  ellipse(x1, y1, w1, w1);


  //Player 2  
  if (x2>width || x2<0) {
    xDirection2*=-1;
  }
  x2+=xDirection2;
  y2 = map(p2, 0, 1, height, 40);

  fill(c2);
  ellipse(x2, y2, w2, w2);


  //Scoring
  if (frameCount % 30 == 0){
  score1 = 0;
  score2 = 0; 
  loadPixels();
  for (int i=0; i < (width); i++) {
    for (int j=0; j<height; j++) {
      if (get(i, j) == c1) {
        score1++;
      }
      if (get(i, j) == c2) {
        score2++;
      }
    }
  }
  }

//SCORING BONUSES!
  
 //Reset widths to default every 3 seconds
  if (countdown % 3 == 0){
    w1 = 30;
    w2 = 30;
  }
 
 /* //QUICK START
  if ((score1/50 > 1000) && (score1/50 < 2500) && (score1/50 > score2/50)) {
    w1+=1;
    message1="QUICK START!";
  }
  if ((score2/50 > 1000) && (score2/50 < 2500) && (score2/50 > score1/50)) {
    w2+=1;
    message2="QUICK START!";
  }

  
  //TIME ENDING
  if (countdown<=3) {
    w1+=1;
    message1="HURRY!";
  }
  if (countdown<=3) {
    w2+=1;
    message2="HURRY!";
  }
*/  
  //SUPER LOUD
    if (y1 <= 100) {
    w1+=1;
    message1="SUPER LOUD!";
  }
  if (y2 <= 100) {
    w2+=1;
    message2="SUPER LOUD!";
  }
/*
 //MOAR NOIZE!
   if ((y1>300) && (y1<height/2) ) {
    w1-=1;
    message1="MOAR NOIZE!";
  }
   if ((y2>300) && (y2<height/2)) {
    w2-=10;
    message2="MOAR NOIZE!";
  }
*/  
  //TOO QUIET PENALTY
    if (y1>=height-100) {
    w1-=1;
    message1="TOO QUIET!";
  }
  if (y2>=height-100) {
    w2-=1;
    message2="TOO QUIET!";
  }


  //Keep and display the messages and scorezzzzzzz
  textAlign(LEFT);
  fill(30);
  rect (0, 0, width, 60);
  fill(256, 256, 256);
  fill(c1);
  textFont(score, 20);
  text(message1, width/2-300, 40);
  fill(c2);
  textFont(score, 20);
  text(message2, width/2+150, 40);
  textFont(score, 48);
  fill(c1);
  text(score1/50, 100, 50);
  fill(c2);
  text(score2/50, width-200, 50);
  
  //DEBUG
  //println(score1/1000);
  //println(score2/1000);
  //println(countdown);
}

