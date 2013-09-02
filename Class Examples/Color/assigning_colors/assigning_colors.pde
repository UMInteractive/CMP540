color magenta = #F700E7;
color red = color(255,0,0);

void setup() {
  size(500,500);
}

void draw() {
  fill(red);
  rect(0,0,width,height);
  fill(magenta);  
  ellipse(width/2, height/2, 50,50);
}
