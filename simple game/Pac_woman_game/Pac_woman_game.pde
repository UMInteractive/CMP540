Pac pw;
int score;
int life;
PFont font;
boolean [] [] food = new boolean [20][19];
boolean keyUp,keyDown,keyLeft,keyRight;



void setup(){
  size(800, 600);
  frameRate(2);
  life=3;
  pw = new Pac();
  // smooth();
  font = createFont("BaskOldFace-48.vlw", 30);
  // init
  ////make the "food"
  for (int x=40; x<width; x=x+40) {
    for (int y=40; y<height; y=y+40) {
      food [x/40][y/40] = true;
    }
  }
}
//
void draw(){
  background(0);
  ////make the background dots=food
  for (int x=40; x<width; x=x+40) {
    for (int y=40; y<height; y=y+40) {
      if (food [x/40][y/40]) { // when's not eaten yet
      color (#E73BE8);
        ellipse(x, y, 20, 20);  // paint 
      }
    }

     
  }
  pw.move();
  pw.draw();
  scoreLife();
  startOver();
  println("pw.x:  "+pw.x);
}
// ================================================
void keyReleased (){
   if(keyCode==UP){ 
     keyUp=false;
   }
   if (keyCode==DOWN) {
   keyDown=false;
 }
   if (keyCode==RIGHT){
   keyRight=false;
 }
   if (keyCode==LEFT){
  keyLeft=false;
 }
 }
void keyPressed(){//pac does not move unless key pressed 
  if (key >= '0' == key <='9'){
   pw. speedX=0;
   pw. speedY=0;
   return; 
}
  if (keyCode==DOWN)
  {
    pw.speedX=0;
    pw.speedY=1;
  }
  if (keyCode==UP)
  {
    pw.speedX=0;
    pw.speedY=-1;
  }
  if (keyCode == RIGHT)
  {
    pw.speedX=1;
    pw.speedY=0;
  }
  if (keyCode == LEFT)
  {
    pw.speedX=-1;
    pw.speedY=0;
  }
  if (keyPressed){ 
    if (key=='p'||key=='P'){ 
      noLoop();
}
}
if (keyPressed){
  if (key=='z'||key=='Z'){
     loop(); 
  }
}
}


     
//draw Score + Life
void scoreLife () {
  textFont(font);
  fill (0, 255, 255);
  text("Score "+score, 600, 600);
  fill (255, 0, 255);
  text("Life "+life, 500, 600);
}
//
////start over the game every time pacman touches the X and Y walls
void startOver () {
  rect(250, 0, 40, 500);
       rect(400, 250, 40,300);
       rect (75, 62, 100, 25);
       rect (400, 62, 100,25);
       rect (600, 62, 100, 25);
       rect (700, 300, 40, 200);
  if  ((pw.x > width) || (pw.x < 0) ||
    (pw.y > height) || (pw.y < 0)) {
    pw = new Pac();     
    life-=1;
    score=0;
    background (0);
    textFont(font);
    println("YOU GOING TO LEARN TODAY");
    fill (0, 255, 255);
    text("YOU GOING TO LEARN TODAY", height/2, width/2);
  }
  if  (life==0)
  {
    println ("Game over");
    background (0);
    textFont(font);
    fill (0, 255, 255);
    text("GAME OVER ", height/2, width/2);
  }
  else if (score==3000)
  {
    println ("YOU RUN THIS!!!");
    background (0);
    textFont(font);
    fill (0, 255, 255);
    text("YOU RUN THIS!!!", height/2, width/2);
  }
   
  
  
}
// =========================================================
class Pac
{
  int x, y;
  int speedX, speedY;
  int openClose;
  //
  Pac() // ----------------------------
  {
    x=0;
    y=40;
    speedX=0 ;
    speedY=0;
    openClose=0;
  }
  //
  void draw()
  {
    // draw  pac with open mouth
    if (openClose==1)
    {
      // Body     
      noStroke();
      if (speedX  == 1)
      {
        fill (255, 255, 0);
        arc(x, y, 30, 30, 0.52, 5.76);
        fill (0);
        ellipse (pw.x-40, pw.y, 40, 40);
      }
      else if (speedX == -1)
      {
        fill (255, 255, 0);
        arc(x, y, 30, 30, 3.67, 8.9);
        fill (0);
        ellipse (pw.x+40, pw.y, 40, 40);
      }
      else if (speedY == -1)
      {
        fill (255, 255, 0);
        arc(x, y, 30, 30, 5.15, 10.45);
        fill (0);
        ellipse (pw.x, pw.y+40, 40, 40);
      }
      else if (speedY == 1)
      {
        fill (255, 255, 0);
        arc(x, y, 30, 30, 2.25, 7.35);
        fill (0);
        ellipse (pw.x, pw.y-40, 40, 40);
      }
    }
    // draw  pamcan with close mouth
    else
    {
      // Body     
      fill (255, 255, 0);
      noStroke();
      if (speedX  == 1)
      {
        fill (255, 255, 0);
        arc(x, y, 30, 30, 0, 6.9);
        fill (0);
        ellipse (pw.x-40, pw.y, 40, 40);
      }
      else if (speedX == -1)
      {
        fill (255, 255, 0);
        arc(x, y, 30, 30, 0, 6.9);
        fill (0);
        ellipse (pw.x+40, pw.y, 40, 40);
      }
      else if (speedY == -1)
      {
        fill (255, 255, 0);
        arc(x, y, 30, 30, 0, 6.9);
        fill (0);
        ellipse (pw.x, pw.y+40, 40, 40);
      }
      else if (speedY == 1)
      {
        fill (255, 255, 0);
        arc(x, y, 30, 30, 0, 6.9);
        fill (0);
        ellipse (pw.x, pw.y-40, 40, 40);
      }
    }
    openClose=1-openClose;
  }
  // make pacman move
  void move(){
   
    x += speedX * 40;
    y += speedY * 40;
    if (x<width&&x>0 && y<height&&y>0) {
      if (food [pw.x/40][pw.y/40]) {
        score += 10;
        food [x/40] [y/40] = false; // eat it
        
      }
    }
  }
}

