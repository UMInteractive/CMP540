
Bucket buck = new Bucket();
RainDrop[] rain = new RainDrop[70];

boolean right = false;
boolean left = false;
void setup() {
  textAlign(CENTER);
  smooth();
  size(500, 500);

  for (int i = 0; i<rain.length;i++) {
    rain[i] = new RainDrop();
  }
}

int dropsMissed = 0;
int dropsCaught = 0;
int gameState = 1;
void draw() {
 
  background (0);
  if (gameState==1) {
    fill(0, 200, 0);
    rect(0, 399, width, height-401);
    stroke(0);
    line((width/4), 401, (width/4), height);
    line((3*width/4), 401, (3*width/4), height);
    fill(255);
    text("LEFT", (width/4) - 50, 450);
    text("STAY", (2*width/4), 450);
    text("RIGHT", (3*width/4) + 50, 450);
 
    if (mouseY>400) {
      checkMouse();
    }
    buck.display();
 

    for (int i = 2; i<rain.length;i++) {
      if ((int)(millis()/1000) ==rain[i].timeToDisplay) {
        rain[i].makeRain();
      }
    }
    
    for (int i=0; i<rain.length;i++) {
 
      if (rain[i].falling) {
        rain[i].display();
        rain[i].fall();
      }
     
      if (abs(rain[i].locationY - buck.locationY+35)<=5 && abs(rain[i].locationX - buck.locationX)<=35) {
        rain[i].caught();
        dropsCaught ++;
      }
      if (rain[i].locationY>400) {
        rain[i].miss();
        dropsMissed++;
      }
    }
   
    if (right) {
      buck.moveRight();
    }
    if (left) {
      buck.moveLeft();
    }
 
    fill(150);
    text("Rain drops caught: " + dropsCaught, 200, 15);
    if (dropsMissed + dropsCaught == 30) {
      gameState = 4;
    }
  }

  if (gameState == 4) {
    text("Congratulations! You caught " +dropsCaught+ " rain drops!", 200, 100);
    if (dropsCaught >=dropsMissed) {
      text("WINNER!", 150, 150);
    }
    else text("TRY AGAIN!", 150, 150);
  }
}

void keyPressed() {
  if (keyCode==RIGHT) {
    right = true;
  }
 
  if (keyCode==LEFT) {
    left = true;
  }
}
 
void keyReleased() {
  if (keyCode==RIGHT) {
    right = false;
  }
 
  if (keyCode==LEFT) {
    left = false;
  }
}
 
void checkMouse() {
  if ((int)mouseX> (int)(3*width/4)) {
    right = true;
    left = false;
  }
  if ((int)mouseX< (int)(width/4)) {
    left = true;
    right = false;
  }
  if ((int)mouseX>(int)(width/4) && (int)mouseX< (int)(3*width/4)) {
    left = false;
    right = false;
  }
}
 
class Bucket{
  int locationX;
  int locationY;
  int speedChange;
   
  Bucket(){
   locationX = 200;
   locationY = 390;
   speedChange = 5;
    
  }
   
  void moveRight(){
    locationX += speedChange;
    //keep the bucket on the screen
    if (locationX> 366){
      locationX = 366;
    }
  }
   
  void moveLeft(){
    locationX -= speedChange;
    //keep the bucket on the screen
    if (locationX< 34){
      locationX = 34;
    }
     
  }
   
  void display(){
    fill(200);
    quad(locationX-40,locationY-40,
        locationX-35,locationY + 15,
        locationX + 35,locationY + 15,
        locationX + 40,locationY - 40);
    
     
    
  }
   
}
class RainDrop{
  int locationX;
  int locationY;
  boolean falling;
  int timeToDisplay;
  int fallingSpeed;
   
   
  RainDrop(){
    locationY = 2;
    locationX = (int)random(2,325);
    falling = false;
    timeToDisplay = (int)random(2,80);
    fallingSpeed = (int)random(2,3);
  }
   
  void display(){
    noStroke();
    fill(84,162,200);
    ellipse(locationX,locationY, 10,10);
    triangle(locationX-5,locationY,
             locationX,locationY-10,
             locationX + 5, locationY);
              
  }
   
  void fall(){
    locationY +=fallingSpeed;
  }
   
  void makeRain(){
    falling = true;
  }
 //these two methods put the drop off the screen
  void caught(){
     
    fallingSpeed = 2;
    locationX = 999;
  }
  void miss(){
   fallingSpeed = 2;
  locationY = -200;
  }
   
}


