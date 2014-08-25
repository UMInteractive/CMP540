/*uploaded to Github with the files*/

PFont font;

void setup() {
  size(500, 500);
  font =loadFont("Serif-20.vlw");
  textFont(font);
}

void draw() {
  smooth();
  peachface();
  yellowface();
  text("press and hold the spacebar", 20,20);
}


void peachface() {
  if (keyPressed == true) {
    fill(252, 239, 222);
    ellipse(width/2, height/2, 300, 300);
    fill(0);
    ellipse(250, 325, 40, 40); 
    fill (255, 0, 0);
    stroke(111, 16, 16);
    noStroke();
    ellipse(width/2, height/2, 75, 75);
    fill(255, 255, 255);
    ellipse(200, 200, 15, 15);
    ellipse(300, 200, 15, 15);
  }
}
void yellowface() {
  if (keyPressed== false) {
    fill(250, 240, 90);
    ellipse(width/2, height/2, 300, 300);
    fill(0);
    ellipse(250, 325, 40, 40); 
    fill (255, 0, 0);
    stroke(111, 16, 16);
    noStroke();
    ellipse(width/2, height/2, 75, 75);
    fill(255, 255, 255);
    ellipse(200, 200, 15, 15);
    ellipse(300, 200, 15, 15);
  }
  
  if (keyPressed == false);  {
    println("");
  }
}
