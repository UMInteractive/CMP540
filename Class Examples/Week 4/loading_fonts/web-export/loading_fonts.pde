PFont myFont;
PFont myFont2;

void setup() {
  size(500,500);
  myFont = loadFont("lotype.vlw");
  myFont2 = loadFont("myriad.vlw");
  smooth();
}

void draw() {
  textFont(myFont);
  text("Helvetica", 20, 120);
  textFont(myFont2);
  text("Myriad", 20, 170);
}

