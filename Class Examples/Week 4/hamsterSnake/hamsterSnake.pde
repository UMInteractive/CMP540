PImage hamster;
PImage hamsterMask;

void setup() {
  hamster = loadImage("hamster.jpg");
  hamsterMask = loadImage("hamster-mask.png");
  hamster.mask(hamsterMask);
  size(500,500);
  imageMode(CENTER);
}

void draw() {
  image(hamster, mouseX, mouseY);  
}
