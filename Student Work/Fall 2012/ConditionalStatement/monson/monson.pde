void setup(){
 size(800,550);
 background(0);
}

void draw(){
  for (int i = 50; i < 700; i+=40){
    stroke(256,0,0);
    if (i>400){
    stroke(0,256,0);
    }
  line(i,50, i,500);
  }
}
