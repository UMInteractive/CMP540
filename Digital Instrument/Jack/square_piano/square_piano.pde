Square square[];
Square firstsquare[];

import arb.soundcipher.*;
import arb.soundcipher.constants.*;

int TB0 = 0;
int TB1 = 300;
int TB2 = 600;
int TB3 = 900;
int TA0 = 0;
int TA1 = 300;
int TA2 = 600;
int TA3 = 900;

boolean firsttime = true;

PVector p;

SoundCipher sc = new SoundCipher(this);
int C1 = 60;
int C2 = 62;
int C3 = 64;
int C4 = 65;
int C5 = 67;
int C6 = 69;
int C7 = 71;
int C8 = 72;
int C9 = 74;

int i = 0;
//int k = 0;

void setup() {
  colorMode(HSB, 100);
  size(900, 900, P3D);
  background(0, 0, 99);
  line(0, 300, 900, 300);
  line(0, 600, 900, 600);
  line(300, 0, 300, 900);
  line(600, 0, 600, 900);


  p = new PVector();

  square = new Square[9];
  for (int y = 0; y < height; y = y +300) {
    for (int x = 0; x<width; x = x+300) {
      square[i] = new Square(x, y);
      i++;
    }
  }
  /*firstsquare = new Square[9];
  for (int y = 0; y < height; y = y +300) {
    for (int x = 0; x<width; x = x+300) {
      firstsquare[k] = new Square(x, y);
      k++;
    }
  }
  */
}

void draw() {
  colorMode(HSB, 100);
  p.x = mouseX;
  p.y = mouseY;
  /*if (firsttime) {
    for (int s = 0; s <9; s++) {
      firstsquare[s].play();
      firstsquare[s].colornumber = 30;
      firstsquare[s].brightness = s*10;
    }
    firsttime = false;
  }*/
}

void mousePressed() {

  if (p.x <= TA1 && p.x >= TA0 && p.y <= TB1 && p.y>= TB0) {
    sc.playNote(C1, 100, 5.0);
    square[0] = new Square(0, 0);
    square[0].play();
  }

  if ( p.x <= TA2 && p.x >= TA1 && p.y <= TB1 && p.y >= TB0) {
    sc.playNote(C2, 100, 5.0);
    square[1] = new Square(300, 0);
    square[1].play();
  }

  if (p.x <= TA3 && p.x>= TA2 && p.y <= TB1 && p.y >= TB0) {
    sc.playNote(C3, 100, 5.0);
    square[2] = new Square(600, 0);
    square[2].play();
  }

  if (p.x <= TA1 && p.x >= TA0 && p.y <=TB2 && p.y >=TB1) {
    sc.playNote(C6, 100, 5.0);
    square[3] = new Square(0, 300);
    square[3].play();
  }
  if (p.x <= TA2 && p.x >= TA1 && p.y <= TB2 && p.y >= TB1) {
    sc.playNote(C5, 100, 5.0); 
    square[4] = new Square(300, 300);
    square[4].play();
  }
  if (p.x <= TA3 && p.x >= TA2 && p.y <= TB2 && p.y >= TB1) {
    sc.playNote(C4, 100, 5.0);
    square[0] = new Square(600, 300);
    square[5].play();
  }
  if (p.x <= TA1 && p.x >= TA0 && p.y <= TB3 && p.y >= TB2) {
    sc.playNote(C7, 100, 5.0);
    square[0] = new Square(0, 600);
    square[6].play();
  }
  if (p.x <= TA2 && p.x >= TA1 && p.y <= TB3 && p.y >= TB2) {
    sc.playNote(C8, 100, 5.0);
    square[0] = new Square(300, 600);
    square[7].play();
  }
  if (p.x <= TA3 && p.x >= TA2 && p.y <= TB3 && p.y >= TB2) {
    sc.playNote(C9, 100, 5.0);
    square[0] = new Square(600, 600);
    square[8].play();
  }
}

