color magenta =#F700E7;
float xPosition=0;
float xDirection= 1;
color fromGreen=color (0,255,0);
color toRed= color (255,0,0);
float counter= 0;
float yPosition=0;
float yDirection=-1;


void setup (){
  size (500,500);
  rectMode(CENTER);
}
  
  void draw (){
    background (200,200,255);
  line (0,0,width,height);
  fill (0,0,0,1);
  rect (0,0,width,height);
  fill (magenta); 
  ellipse (xPosition, height/2,50,50);
  xPosition=xPosition+xDirection;
  if (xPosition<0 ||xPosition >width) {
    xDirection *=-1;
  }
  ellipse (xPosition, height/3,100,100);
  counter=counter+.01;
  if (counter >=1){
    counter=0;
  }
 
  color currentColor=lerpColor (fromGreen,toRed,counter);
  fill (currentColor);
  rect (width/2,height/2,50,50);
  ellipse (xPosition, width/2,50,50);
  xPosition=xPosition +xDirection; 
  if (xPosition<0||xPosition>width) {
    xDirection *=-2;}
    
 ellipse (yPosition, height/8, 100,100);
 yPosition=yPosition+yDirection;
 if (yPosition<0 ||yPosition>width){
   yDirection *=-3;}
   
ellipse  (yPosition, height/1, 100,100);
yPosition=yPosition +yDirection;
if (yPosition<0||yPosition >width) { yDirection *=-2;}

rect (50,50,width/4,height/4);

rect (440,440,width/4,height/4);

float redness =map(mouseX,0,width,0,255);
fill (redness,0,0);
arc (mouseX,mouseY, 80,80,0, PI+QUARTER_PI,PIE);





  }
 

