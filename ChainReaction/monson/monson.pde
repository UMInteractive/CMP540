int x = 0;
int y = 0; 
int rx = 250;
int ry = 250;
int bbx = 290;
int bby = 240;
int gsx = 300;
int gsy = 350;
int ybx = 455;
int yby = 40;

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  background(0, 0, 0, 40);

  //the little ball that starts it all
  fill(256, 256, 256);
  noStroke();
  ellipse (x, y, 5, 5);

  //red rectangle
  fill (256, 0, 0);
  rect (rx, ry, 50, 15);

  //blue ball
  fill(0, 0, 256);
  ellipse(bbx, bby, 20, 20);

  //green square
  fill(0, 256, 0);
  rect(gsx, gsy, 20, 20);

  //white bouncer ball
  fill(256, 256, 256);
  ellipse(480, 500, 80, 80);

  //purple track
  stroke(255, 0, 255);
  strokeWeight(3);
  line(50, 30, 480, 30);

  //yellow ball
  noStroke();
  fill(256, 256, 0);
  ellipse (ybx, yby, 20, 20);

  //yellow bucket
  quad(15, 475, 75, 475, 70, 500, 20, 500);

  //GO, BALL, GO!
  x++;
  y++;

  if (x >= 250) {
    y=247;
  }
  if (x >= (bbx-10)) {
    x--;
    bbx++;
  }
  if (bbx >= 310) {
    bbx=310;
    bby+=5;
  }

  if (bbx <= 30) {
    bbx=30;
  }
  if (bby >= gsy) {
    gsx += 5;
    gsy += 3;
  }
  if (bby >= 520) {
    bby=520;
    bbx=0;
  }
  if (gsx > 460) {
    gsx= 458;
    gsy= gsy-5;
  }
  if (gsy <= 29) {
    gsy = 30;
    ybx--;
  }

  if (ybx <=50) {
    ybx = 50;
    yby = yby+5;
  }
}

