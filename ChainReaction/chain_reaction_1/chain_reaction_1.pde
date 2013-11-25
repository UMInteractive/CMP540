float x;
float y;
float e=300;
float b=300;
float z=430;
float n=230;
float f=20;
float dz=20;
float speed=2.285;
float state=0;
void setup(){
  size(500,500);
  background(0);
 
} 
void draw(){
  fill(250,250,0);
  noStroke();
  ellipse(x,y,50,50);
  x++;
  y++;
  if (x>250){
    y=240;
  }
  fill (220,0,220);
  noStroke();
  rect(250,250,250,250);
  fill(120,220,120);
  ellipse(e,b,60,60);
  if (x>=(e+10)){
    x--;
    e++;
  }
  if (e>=390){
    e=390;
    b+=10;
  }
  fill (300,0, 150);
 arc(z,n,60,60,2.5,6.9);
 if (e>=(z-10)){
   e--;
 

 }
 fill (0,256,300);
 rect(x,y,50,50);

 fill (150,0,250);
 ellipse(f,dz,50,50);
 if(state==0){
   f=f-speed;
 if(f<25){
   f=25;
   state=2;
 }
 }
 
 else if (state==2){
   dz=dz+speed;
   if(dz>height-20){
     dz=height-20;
     state=3;
   }
 } 
 else if ( state==3){
   f=f+speed;
   if (f>width-50){
     f=width-50;
     state=4;
   }
 }
 else if (state==4){
   dz=dz-speed;
   if (dz<0){
     dz=0;
     state=4;
   }
 }
 fill(0,256,0);
 rect(425,0,70,70);
  
}
