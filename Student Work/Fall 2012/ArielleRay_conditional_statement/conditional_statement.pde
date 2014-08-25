color lightblue = #BFF9FF;
float xPosition = 0;
float xDirection = 1;
float yDirection =1;
float yPosition =-1;
int greyscale = 0;


void setup() {
  size(500, 500);
  background(255,255,255);
  noStroke();
  
}

void draw() {
  fill(greyscale, greyscale, greyscale);
  rect(0,0,width,height);
  fill(lightblue);
  ellipse(xPosition, height/1.5, 75,75);
  xPosition = xPosition + xDirection;
  greyscale = greyscale +1;
  lightblue = lightblue +1;
  
  if(xPosition < 0 || xPosition > height) {
    xDirection *= -1;
  }

 if(xPosition >=500) {
    greyscale = -1;
  }
 if(xPosition <=0) {
    greyscale = +1; 
  }

  if(xPosition == 0 || xPosition == 500) {
     ellipse(xPosition, height/2, 50,50);
    fill(60,206,61);
   
  }
}

