float xPosition = 30;
float xDirection = 0;
float yPosition = 30;
float yDirection = 0;
PFont myFont; 

void setup () {
  size (500, 500);
  smooth();
  background(#9BD9E8);

  textAlign(CENTER);
  myFont = loadFont("gotham.vlw");
  textFont(myFont);
  fill(#0D45D8);
  textSize(25);

  text("Use the arrow keys", width/2, height-20);
  textSize(15);
  text("Pause with the space bar", width/2, height-5);
}

void draw () {

  noStroke();
  fill(#FFFFFF);
  ellipse(xPosition, yPosition, 20, 20);
  xPosition += xDirection;
  yPosition += yDirection;

  if (( xPosition >= width-10) || (xPosition < 10)) {
    xDirection = -xDirection;
  }

  if (( yPosition >= height-50) || (yPosition < 10)) {
    yDirection = -yDirection;
  }
}

void keyPressed() {
  if (key == CODED) { //sets arrow keys
    if (keyCode == RIGHT && xPosition<=width-30) {
      xDirection = 1;
      yDirection = 0;
    }
    if (keyCode == LEFT && xPosition >=30) {
      xDirection = -1;
      yDirection = 0;
    }
    if (keyCode == DOWN && yPosition <=height-40) {
      xDirection = 0;
      yDirection = 1;
    }
    if (keyCode == UP && yPosition >=40) {
      xDirection = 0;
      yDirection = -1;
    }

    frameRate(100);  //speeds up line
  }
  if (key == ' ') { // pauses the line 
    xDirection = 0;
    yDirection = 0;
  }
}

void keyReleased() {
  frameRate(50);
}

