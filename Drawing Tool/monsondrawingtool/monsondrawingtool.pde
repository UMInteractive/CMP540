//
//brush brushes[];
PImage albus;
PImage bubs;
PImage wilbur;
PImage name;

void setup() {
  size(500, 500);
  noStroke();
  albus = loadImage("albus.png");
  bubs = loadImage("bubs.png");
  wilbur = loadImage("wilbur.png");
  imageMode(CENTER);
  name = wilbur;
}

void draw() {
  if (mousePressed) {
    image (name, mouseX, mouseY);
  }
}

void keyPressed(){
  if ((key == 'a')||(key =='A')){
    name = albus;
  }
  if ((key == 'w')||(key=='W')){
    name = wilbur;
  }
  if ((key == 'b')||(key == 'B')){
    name = bubs;
  }
}
 

