void setup(){
  size(500, 500);
  background(12,100,1);
  stroke(255);
}

void draw(){
  fill(252, 152, 0);
  for(int g = 25; g<=475; g = g + 25){
    ellipse(g, g, 15, 15);
    for(int h = 25; h<=475; h = h + 25){
      ellipse(h, g, 15, 15);
    }
  }
}
