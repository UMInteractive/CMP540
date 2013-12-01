

void playGame(){
  
 if (isPlaying = true){
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
  //println(score1/1000);
  //println(score2/1000);
  //println(mixerInfo);
  
//Keep and display the scorezzzz
  fill(30);
  rect (0, 0, width, 60);
  fill(256,256,256);
  textFont(score, 20);
  text("NOIZEWARZ", width/2-50, 40);
  textFont(score, 48);
  fill(c1);
  text(score1/50, 100, 50);
  fill(c2);
  text(score2/50, width-200, 50);

 }
}
 

