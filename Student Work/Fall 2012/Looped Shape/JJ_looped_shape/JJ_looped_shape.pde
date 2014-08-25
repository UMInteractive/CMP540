//looped shape

void setup(){
  size(500, 500);
  background(0);
  
}

void draw(){
  for(int x = 10; x<=height; x += 20){
  for(int y = 10; y<=width; y += 20){
  fill(random(255));
  ellipse(x, y, 10, 10);
  }
 }
  for(int i = 0; i<=width; i +=20){
  stroke(255, 0, 0);
  line(i, 0, i, i+25);
  }
}
