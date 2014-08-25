float angle;
void setup() {
  size(500,500);
}

void draw() {
  ellipse(width/2, height/2, random(width), height * sin(angle));  
  angle++;

}

void mousePressed() {
  background(127);  
}
