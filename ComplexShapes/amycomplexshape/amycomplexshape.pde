void setup () {
  size(600,600,P3D);
  
}


void draw () {
  
  // background experimentation
  background(#000000);
  
  
  PImage img;
  img = loadImage("bg.jpg");
  background(img);
  

  smooth();
  
  // random colour changes
  
  float r = random(255);
  float g = random(255);
  float b = random(255);
  
  float c = random(100);
  
  if (c<10) {
      r = random(255);
      g = random(255);
      b = random(255);
  } else {
      r = r;
      g = g;
      b = b; 
  }
  
  // add a floating ball at mousecursor, for kicks
  
  fill(#eeeeee);
  ellipse(mouseX,mouseY,20,20);
  
  // increase size based on mouse pos
  
  float s = mouseX + mouseY;
  float ztrans= s - width*2;
  
  strokeWeight(5);
  stroke(#eeeeee);
  
  // Experimentation with translate();
  
  translate(0,0,ztrans);
  
  // eyes of robot
  
  triangle(274,250,274,290,200,290);
  triangle(326,250,326,290,400,290);
  
  // body of robot
  
  translate(200,200,0);
  fill(r,g,b);
  rect(0,0,200,200, 10, 10, 10, 10);
  
  // feet of robot
  
  line(130,200,220,400);
  line(-30,400,80,200);
  line(-50,400,0,400);
  line(200,400,260,400);

  translate(100,100,0);
  fill(#11AEF5);
  
  // nose and arms of robot
  
  ellipse(0,0,50,50);
  quad(100,50,190,20,190,-90,160,-10);
  triangle(-100,50,-160,120,-120,250);
  
  // mouth of robot
  
  strokeWeight(2);
  line(-20,50,20,50);
  
  // hat of robot
  
  triangle(-80,-100,0,-250,80,-100);
  fill(#eeeeee);
  ellipse(0,-250,20,20);
  
  // cape
  
  fill(#055B81);
  quad(100,70,350,120,230,360,85,100);
  
  // ground
  
  for (int i = -300; i<300; i+=10) {
    stroke(#DEAE10); 
    line(i,320,i,350); 
  }
  
  // text experimentation
  
  // textSize(32);
  // text("hello world!", 70, -150); 
  
}
