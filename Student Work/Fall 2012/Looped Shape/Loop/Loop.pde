int y= 20;
int x= 20;
color fromGreen=color (0,255,0);
color toRed=color (255,0,0);
float counter=0;
color magenta = #F700E7;
void setup (){
  size (500,500);
  background (200,200,255);
}

void draw () { 
  smooth ();
  strokeWeight (2);
  fill (120);
  stroke (40);
  for (int y=20; y<=height-20;y+=10) {
    for (int x=20; x<=width-20;x+=10){
      ellipse (x,y,4,4);
      //Draw a line to the center of the display
      color currentColor=lerpColor (fromGreen,toRed,counter);
      fill(currentColor);
      line (x,y,250,70);
    }
  }
}
