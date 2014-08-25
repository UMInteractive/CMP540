int x = 0;
int y = 0; 
int yPosition = 293;
int xPosition = 490;

int arx = 0;
int ary = 0;
int brx = 0;
int bry = 0;
int crx = 0;
int cry = 0;
int drx = 0;
int dry = 0;
int erx = 0;
int ery = 0;

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  background(255, 255, 255);

  //beggining ball
  fill(#27CB19);
  noStroke();
  ellipse(xPosition, yPosition, 15, 15);

  //path
  fill(#EDCB4F);
  noStroke();
  rect(0, 300, 500, 5);

  //block1
  fill(#148BC9);
  noStroke();
  rect(arx+350,ary+220, 15, 80);

  //block2
  fill(#148BC9);
  noStroke();
  rect(brx+290,bry+220, 15, 80);

  //block3
  fill(#148BC9);
  noStroke();
  rect(crx+210,cry+220, 15, 80);

  //block4
  fill(#148BC9);
  noStroke();
  rect(drx+140,dry+220, 15, 80);

  //block5
  fill(#148BC9);
  noStroke();
  rect(erx+70,ery+220, 15, 80);

  
  //ball rolls
  
  xPosition --;
  
  if (xPosition <= 365) {
    ary++;
  }
   if (xPosition <= 313) {
    bry++;
  }

 if (xPosition <= 233) {
    cry++;
  }

 if (xPosition <= 163) {
    dry++;
  }

 if (xPosition <= 93) {
    ery++;
  }
  

}

