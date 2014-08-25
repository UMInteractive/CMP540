color magenta =#F700E7;
float xPosition=0;
float xDirection=1;
color fromGreen=color(0, 255, 0);
color toRed=color(255, 0, 0);
float counter=0;

void setup(){
  size(500, 500);
}

void draw(){
  background(250, 250, 250);
  
  color currentColor = lerpColor (fromGreen, toRed, counter);
  fill(currentColor);
  int x=100;
  line(50, 50, 450, 450);
  line(50, 450, 450, 50);
  ellipse(50, 50, x, x);
  ellipse(450, 50, x, x);
  ellipse(450, 450, x, x);
  ellipse(50, 450, x, x);
  rect(150, 150, 50, 50);
  rect(300, 300, 50, 50);
  
  
  fill(magenta);
  ellipse(xPosition, height/2, 50, 50);
  xPosition=xPosition + xDirection;
  if(xPosition < 0 || xPosition > width){
    xDirection *= -1;
  }
  counter=counter + 1;
  if (counter >= 15){
    counter = 0;
  }
}
