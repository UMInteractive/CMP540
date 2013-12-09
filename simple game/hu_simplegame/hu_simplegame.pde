//simple game
//collect stars

float x[] = new float [15];
float y[] = new float [15];
PFont font;
int score = 0;
float b1 = 200;
float b2 = 470;
float b3 = 250;
float a = 510;
float s = 1;
int time = 59;
int sec;
boolean start;

void setup(){
  size(500, 500);
  smooth();
  strokeJoin(ROUND);
  for(int i = 0; i < x.length; i ++){
    x[i] = random(530, 850);
    y[i] = random(100, 400);
    cursor(HAND);
  }
}

void draw(){
  
  background(0);
  stroke(3);
  fill(255, 255, 0);
    
  //set the interface
  fill(0, 191, 255);
  font = loadFont("Chalkboard-Bold-48.vlw");
  textFont(font, 50);
  text("Counting Stars", 60, b1);
  textFont(font, 30);
  text("Click stars to get points", 60, b3);
  textFont(font, 25);
  text("P: Pause", 10, b2);
  text("Spacebar: start", 140, b2);
  text("Score:" + score, 10, 30);
  text("Time:00:" + time, 360, 30);
  
  //set start
  if(keyPressed = true){
  if(key == ' '){
  for(int i = 0; i < x.length; i ++){
  fill(255, 255, 0);
  star(x[i], y[i], 10, 20, 5);
  x[i] -= 2; 
  move();
  if(mousePressed = true){
    if(dist(mouseX, mouseY, x[i], y[i]) <= 5){
      score += 10;
      fill(255, 0, 0);
      ellipse(mouseX, mouseY, 10, 10);
    }
   }
  }
  
  if(!start){
    time = floor(60-(millis()-sec)*.001);
  }
  
    b1 -= 3;
    b2 += 3;
    b3 -= 3;
    
  fill(0, 191, 255);
  font = loadFont("Chalkboard-Bold-48.vlw");
  textFont(font, 25);
  text("Press n to restart", a, 480);
  a -= 5;
  if(a < 15){
    a = 10;
  }
  if(b1 < 0){
    b1 = -20;
   }
  if(b2 > 500){
    b2 = 530;
   }
  }
 }
 
 if(time <= -1){
   time = 0;
   noLoop();
   fill(0, 191, 255);
   font = loadFont("Chalkboard-Bold-48.vlw");
   textFont(font, 40);
   text("Congratulations!" , 70, 200);
   text("You got " + score + " points!", 70, 250);
 }
}

//make stars move
void move(){
  for(int i =0; i < x.length; i ++){
  if(x[i] < 50 && x[i] > 0){
  fill(255, 255, 0);
  x[i] = random(-100, 900);
  star(x[i], y[i], 10, 20, 5);
  x[i] -= 1.5; 
   }
  }
}

//set pause and resume
void keyPressed(){
   if(key == 'p' || key == 'P'){
   fill(0, 191, 255);
   font = loadFont("Chalkboard-Bold-48.vlw");
   textFont(font, 40);
   text("Take a break" , 100, 250);
   textFont(font, 25);
   text("Press s + spacebar to continue", 100, 300);
   noLoop();
   }
     
  if(key == 's' || key == 'S'){
  loop();
 }
}

//draw the star
void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float posx = x + cos(a) * radius2;
    float posy = y + sin(a) * radius2;
    vertex(posx, posy);
    posx = x + cos(a+halfAngle) * radius1;
    posy = y + sin(a+halfAngle) * radius1;
    vertex(posx, posy);
  }
  endShape(CLOSE);
 }
