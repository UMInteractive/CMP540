
float[] sq;

void setup() {
  size(500, 500);

  sq = new float[width];
  for (int i = 0; i<sq.length; i++) {
    sq[i] = random(0, width);
  }
}

void draw() {

  for (int i = 0; i<sq.length; i++) {
    noStroke(); 
    fill(random(0, 255), random(0, 255), sq[i]);
    rect(random(-60, width), random(-60, height), sq[i], sq[i]);
  }
}


