float a = 255;
void setup(){
  size(400,400);
  smooth();
}
 
void draw(){
  fill(0,a);
  stroke(random(140),random(255),random(200));
  line(random(0,250), random(0,100), 400,400);
  line(random(0,250), random(0,100), 0,0);
  line(random(0,250), random(0,300),0,400);
  line(random(0,250), random(0,100),400,0);
  line(random(0,250), random(0,100),250,0);
  line(random(0,250), random(0,100),250,400);
  line(random(0,250), random(0,300),0,250);
  line(random(0,250), random(0,100),400,250);
  line(random(0,250), random(0,100), 400,400);
  line(random(0,250), random(0,300), 400,400);
  line(random(0,250), random(0,100),0,400);
  line(random(0,250), random(0,100),400,0);
  line(random(0,250), random(0,300),250,0);
  line(random(0,250), random(0,100),250,500);
  line(random(0,250), random(0,100),0,250);
  line(random(0,250), random(0,300),400,250);
  if(a<30){
  a=a+.5;
  }
  else a=0;
println(a);
}


