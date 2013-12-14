  float hxpos = 100;
float hypos = 100;
float hxvel = 0;
float hyvel = 0;

float hxpos2 = 100;
float hypos2 = 200;
float hxvel2 = 0;
float hyvel2 = 0;

float hxpos3 = 200;
float hypos3 = 100;
float hxvel3 = 0;
float hyvel3 = 0;

float expos = 250;
float eypos = 100;
float exvel = 0;
float eyvel = 0;

float expos2 = 250;
float eypos2 = 100;
float exvel2 = 0;
float eyvel2 = 0;

float expos3 = 250;
float eypos3 = 200;
float exvel3 = 0;
float eyvel3 = 0;

float expos4 = 250;
float eypos4 = 300;
float exvel4 = 0;
float eyvel4 = 0;

float lxpos = 400;
float lypos = 100;
float lxvel = 0;
float lyvel = 0;

float lxpos2 = 550;
float lypos2 = 100;
float lxvel2 = 0;
float lyvel2 = 0;

float oxpos = 700;
float oypos = 100;
float oxvel = 0;
float oyvel = 0;




void setup(){
  size(1000, 500);
  background(255);
}

void draw(){
  hxpos += hxvel;
  hypos += hyvel;
  fill(0);
  ellipse( hxpos,hypos,10,10);
  
  if (hypos <= 100){
    hyvel = 2;
  }
  if (hypos >= 300){
    hyvel = 0;
  }
 if (hyvel <=0){ 
  hxpos2 += hxvel2;
  hypos2 += hyvel2;
  fill(0);
  ellipse( hxpos2,hypos2,10,10);
   if (hypos2 <= 200){
    hxvel2 = 1;
  }
   if (hxpos2 >= 200){
    hxvel2 = 0;
  }
 } 
 
if (hxpos2 == 200){
  hxpos3 += hxvel3;
  hypos3 += hyvel3;
  fill(0);
  ellipse( hxpos3,hypos3,10,10);
  
  if (hypos3 <= 100){
    hyvel3 = 2;
  }
  if (hypos3 >= 300){
    hyvel3 = 0;
  }  
}

if (hypos3 == 300){

  expos += exvel;
  eypos += eyvel;
  fill(0);
  ellipse( expos,eypos,10,10);
  
  if (eypos <= 100){
    eyvel = 2;
  }
  if (eypos >= 300){
    eyvel = 0;
  }
}

if (eypos == 300){
  expos2 += exvel2;
  eypos2 += eyvel2;
  fill(0);
  ellipse( expos2,eypos2,10,10);
  
  if (expos2 <= 250){
    exvel2 = 1;
  }
  if (expos2 >= 350){
    exvel2 = 0;
  }
}

if (expos2 == 350){
  expos3 += exvel3;
  eypos3 += eyvel3;
  fill(0);
  ellipse( expos3,eypos3,10,10);
  
  if (expos3 <= 250){
    exvel3 = 1;
  }
  if (expos3 >= 350){
    exvel3 = 0;
  }
}

  if (expos3 ==  350){
  expos4 += exvel4;
  eypos4 += eyvel4;
  fill(0);
  ellipse( expos4,eypos4,10,10);
  
  if (expos4 <= 250){
    exvel4 = 1;
  }
  if (expos4 >= 350){
    exvel4 = 0;
  }
  }
  
  if (expos4 == 350){
  lxpos += lxvel;
  lypos += lyvel;
  fill(0);
  ellipse( lxpos,lypos,10,10);
  
  if (lypos <= 100){
    lyvel = 2;
  }
  if (lypos >= 300){
    lyvel = 0;
  }
  
  if(lypos == 300 ){
    lxvel =1;
  }
  
  if (lxpos == 500){
    lxvel = 0;
  }
  }
 
  if (lxpos == 500){
  lxpos2 += lxvel2;
  lypos2 += lyvel2;
  fill(0);
  ellipse( lxpos2,lypos2,10,10);
  
  if (lypos2 <= 100){
    lyvel2 = 2;
  }
  if (lypos2 >= 300){
    lyvel2 = 0;
  }
  if (lypos2 == 300){
    lxvel2 = 1;
  }
  if (lxpos2 == 650){
    lxvel2 = 0;
  
  }
}

if(lxpos2 == 650){
  oxpos += oxvel;
  oypos += oyvel;
  fill(0);
  ellipse( oxpos, oypos,10,10);
  
  if(oypos <= 100 && oxpos == 700){
    oyvel = 2;
    oxvel =0;
  }
  
  if (oypos == 300){
    oyvel = 0;
    oxvel = 1;
  }
  
  if (oxpos == 800 && oypos > 100) {
    oyvel = -2;
    oxvel = 0;
  }
  if (oxpos == 800 && oypos == 100){
    oyvel = 0;
    oxvel = -1;
  }
  
  if ( oxpos == 700 && oxvel == -1){
    oxvel = -1;
}
}
}

