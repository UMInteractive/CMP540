void playGame() {
  myTimer.count();
  myTimer.display();
  textAlign(CENTER);
  String message = "NOIZEWARS";
  color cMessage = color(256,256,256); 

  //Player 1

  if (x1>width || x1<0) {
    xDirection1*=-1;
  }
  x1+=xDirection1;
  y1 = map(input.left.level(), 0, .6, height, 0);
  fill(c1);
  ellipse(x1, y1, w1, w1);


  //Player 2  
  if (x2>width || x2<0) {
    xDirection2*=-1;
  }
  x2+=xDirection2;
  y2 = map(input.right.level(), 0, .6, height, 00);

  fill(c2);
  ellipse(x2, y2, w2, w2);


  //Scoring
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

  //SCORING BONUSES!
  
  //Reset widths to default every few seconds
  if (counter % 20 == 0){
    w1 = 30;
    w2 = 30;
  }
  
  //QUICK START
  if ((score1/50 > 1000) && (score1/50 < 2500) && (score1/50 > score2/50)) {
    w1+=20;
    cMessage= c1;
    message="QUICK START!";
  }
  if ((score2/50 > 1000) && (score2/50 < 2500) && (score2/50 > score1/50)) {
    w2+=20;
    cMessage= c2;
    message="QUICK START!";
  }
  
  //TIME ENDING
  if (counter<=20 && (counter%5==0)) {
    w1+=50;
    cMessage= c1;
    message="HURRY!";
  }
  if (counter<=20 && (counter%5==0)) {
    w2+=50;
    cMessage= c2;
    message="HURRY!";
  }
  
  //SUPER LOUD
    if (y1 < height-100) {
    w1+=10;
    cMessage= c1;
    message="SUPER LOUD!";
  }
  if (y2 < height-100) {
    w2+=10;
    cMessage= c2;
    message="SUPER LOUD!";
  }
  
/*  //MOAR NOIZE!
   if ((y1>300) && (y1<height/2) ) {
    w1+=10;
    cMessage= c1;
    message="MOAR NOIZE!";
  }
   if ((y2>300) && (y2<height/2)) {
    w2+=10;
    cMessage= c2;
    message="MOAR NOIZE!";
  }
*/  
  //TOO QUIET PENALTY
    if (y1>=100) {
    w1-=20;
    cMessage= c1;
    message="TOO QUIET!";
  }
  if (y2>=100) {
    w2-=20;
    cMessage= c2;
    message="TOO QUIET!";
  }


  //Keep and display the scorezzzz
  textAlign(LEFT);
  fill(30);
  rect (0, 0, width, 60);
  fill(256, 256, 256);
  fill(cMessage);
  textFont(score, 20);
  text(message, width/2-50, 40);
  textFont(score, 48);
  fill(c1);
  text(score1/50, 100, 50);
  fill(c2);
  text(score2/50, width-200, 50);
  
  //DEBUG
  //println(score1/1000);
  //println(score2/1000);
  //println(mixerInfo);
  println(counter);
}

