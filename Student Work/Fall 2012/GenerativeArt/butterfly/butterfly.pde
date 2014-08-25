/*
PFont
Motionmy
Circles
*/ 

PImage myImage;
color selectedColor; 
float x;
float y;
PImage test14;
float time=0;
float going =1;
boolean fade=false;
 


void setup () {
  myImage=loadImage ("butterfly.jpg");
  size (500,500);
  noStroke ();
  smooth ();
  test14=loadImage ("1011862_855627554135_1878974063_n.jpg");
}

void draw (){
  float randomX=random (0,test14.width);
  float randomY= random (0, test14.height);
  selectedColor=test14.get(int(randomX),int(randomY));
  image (myImage,50,y);
  image (myImage, 300,300);
  image (myImage, 460,y);
 
  fill ( selectedColor);
  ellipse(randomX,randomY,60,60);
    fill (120,200,0  );
  ellipse (x,y,50,50);

  imageMode(CENTER);
  image(test14,width/2,height/2);
  tint(255,200-time);
  time=time+going;
}
void keyPressed (){
  if (key==' '){
    if (fade==false);
    fade=!fade;
    time=0;
    background (0);
    }
   }
  

