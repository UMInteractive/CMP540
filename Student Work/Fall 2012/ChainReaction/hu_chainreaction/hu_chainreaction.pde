//chain reaction

float x1 = 250;
float y1 = 0;
float x2 = 250;
float y2 = 0;
float x3 = 250;
float y3 = 0;
float x4 = 80;
float y4 = 245;
float x5 = 25;
float y5 = 318;

void setup(){
  size(500, 550);
  smooth();
  strokeJoin(ROUND);
  frameRate(50);
}

void draw(){
   background(0);
      
  //three balls
  noStroke();
  fill(255, 255, 0);
  ellipse(x1, y1, 20, 20);
  fill(255, 105, 180);
  ellipse(x2, y2, 20, 20);
  fill(0, 191, 255);
  ellipse(x3, y3, 20, 20);
    
  //the quad on the top
  noStroke();
  fill(102, 0, 0);
  quad(200, 0, 300, 0, 270, 40, 230, 40);
  
  //green lines
  stroke(0, 100, 0);
  strokeWeight(5);
  line(180, 150, 225, 150);
  line(275, 150, 320, 150);
  line(180, 150, 120, 282);
  line(120, 282, 80, 282);
   
  //pipe
  noStroke();
  fill(124, 252, 0, 90);
  quad(225, 148, 275, 148, 265, 180, 235, 180);
  rect(235, 180, 30, 100);
  
  //green platform
  noStroke();
  fill(0, 100, 0);
  rect(0, 330, 50, 150);
  quad(50, 330, 180, 450, 180, 480, 0, 480);
  rect(180, 450, 300, 30);
 
  //rectangle
  noStroke();
  fill(255, 140, 0);
  rect(x4, y4, 35, 35);
  
  //ball
  noStroke();
  fill(255, 0, 0);
  ellipse(x5, y5, 25, 25);
  
  //start
  start();
}

void start(){
  y1 += 5 ;
  x2 -= 2.5*0.54;
  y2 += 2.5;
  x3 += 2*0.4;
  y3 += 2;
  
  if(y1 > 445){
    x1 = 250;
    y1 = 440;
  }
  
  if(x2 < 120){
    x4 -= 3;
    x2 = -2;
    y2 = 270;
  }
  
  if(x2 < 100){
    x2 = 99;
    y2 = 270;
  }
  
  if(x4 < 40){
    x4 = 20;
    y4 += 2;
  }
  
  if(y4 > 295){
    x4 = 20;
    y4 = 295;
    x5 += 2;
  }
  
  if(x5 > 50){
    x5 += 2*0.25;
    y5 += 2;
  }
  
  if(x5 > 180){
    x5 += 1.5;
    y5 = 440;
  }
  
  if(x5 > 250){
    y5 = 440;
    x1 += 5;
    y1 = 440;
  }

  if(x3 > 324 && x3< 326){
   x3 = 325;
   y3 += 3;
  }
 
 if(y3 > 445){
  x3 = 320;
  y3 = 440;
 }
  
 if(x5 > 315){
   x3 += 5;
   y3 = 440;
 }
  
 if(x5 > 520){
   x1 = 520;
   x3 = 520;
   x5 = 520;
   y1 = 450;
   y3 = 450;
   y5 = 450;
 }
}
