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
  for(int i = 0; i < x.length; i ++){
  star(x[i], y[i], 10, 20, 5);
  x[i] -= 2;
  
  if(mousePressed = true){
    if(dist(mouseX, mouseY, x[i], y[i]) <= 5){
      score += 10;
      fill(255, 0, 0);
      ellipse(mouseX, mouseY, 10, 10);
    }
   }
  }
    
  //set the interface
  fill(0, 191, 255);
  font = loadFont("Chalkboard-Bold-48.vlw");
  textFont(font, 50);
  text("Counting Stars", 60, b1);
  textFont(font, 25);
  text("P: Pause", 10, b2);
  text("R: Resume", 370, b2);
  text("Spacebar: start", 140, b2);
  text("Score:" + score, 10, 30);
  
  move();
  
  //set start
  if(keyPressed = true){
   if(key == ' '){
    b1 -= 3;
    b2 += 3;
  fill(0, 191, 255);
  font = loadFont("Chalkboard-Bold-48.vlw");
  textFont(font, 25);
  text("Press RIGHT KEY to restart", a, 480);
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
  
  if(key == CODED){
  if(keyCode == RIGHT){
  score = 0;
  fill(0, 191, 255);
  font = loadFont("Chalkboard-Bold-48.vlw");
  textFont(font, 25);
  text("Press RIGHT KEY to restart", a, 480);
   }
  }
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
     noLoop();
   }
   if(key == 'r' || key == 'R'){
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
