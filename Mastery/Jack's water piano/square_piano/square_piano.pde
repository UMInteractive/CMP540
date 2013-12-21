import processing.serial.*;
float A = 0;
float B = 0;
Serial port;
int numDataPoints = 500;

import arb.soundcipher.*;
import arb.soundcipher.constants.*;

Square square[];
Fsquare fsquare[];
float avgX[];
float avgY[];
int currentAvgIndex = 0;
/*
int TB0 = 0;
 int TB1 = 300;
 int TB2 = 600;
 int TB3 = 900;
 int TA0 = 0;
 int TA1 = 300;
 int TA2 = 600;
 int TA3 = 900;
 */

int TB0 = 500;
int TB1 = 5000;
int TB2 = 8000;
int TB3 = 10000;
int TA0 = 5000;
int TA1 = 8000;
int TA2 = 10000;
int TA3 = 40000;
boolean firsttime = true;
boolean somebody = false;
boolean startgame = false;

PVector p;
PVector pp;

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
int k = 0;
float ml = 0;

void setup() {
  port = new Serial(this, "/dev/tty.usbmodem1411", 9600);
  port.bufferUntil('\n');

  colorMode(HSB, 100);
  size(900, 900);
  background(0, 0, 0);
  line(0, 300, 900, 300);
  line(0, 600, 900, 600);
  line(300, 0, 300, 900);
  line(600, 0, 600, 900);


  p = new PVector();
  pp = new PVector();

  square = new Square[9];
  fsquare = new Fsquare[9];
  avgX = new float[2];
  avgY = new float[2];
  for (int y = 0; y < height; y = y +300) {
    for (int x = 0; x<width; x = x+300) {
      square[i] = new Square(x, y);
      fsquare[i] = new Fsquare(x, y, ml);
      k++;
      ml = ml +350;
      i++;
    }
  }
}

void draw() {
  rect(0, 600, 300, 300, 10);
  // p.x = A;
  // p.y = B;
  //if (p.x <= TA1 && p.x >= TA0 && p.y <= TB3 && p.y >= TB2) {
    startgame = true;
  //}
  if (startgame) {
    background(0, 0, 99);
    colorMode(HSB, 100);


    for (int i = 0; i <9; i++) {  
      square[i].display();
      fsquare[i].show();
    }
    for (int i = 0; i <9; i++) {  
      fsquare[i].show();
    }
  }
}
void mousePressed() {
}


void serialEvent(Serial port) {
  String s;
  s = port.readString();
  s = s.replaceFirst("\n", ""); 
  // print("S: " + s);
  //Read a line of text from the Serial Port. '\n' means "newline".
  //s should have a value like "360 360 480"
  //String s = new String(port.readBytesUntil('\n'));
  //String s = port.readString();
  //char c = char(port.read());
  //String s = "";
  //while (c != '\n') {
  //    s = s + c;
  //}
  //println(s);

  //Now split our line of text into an array of numbers.
  //The " \r\n\t," tells splitTokens to split the string on any white space character
  //or a comma. That's not essential but makes our code more robust.
  int[] xy = int(splitTokens(s, " \r\n,"));
  //Now we will assign our array values to our global variables so we can use
  //them in the draw() function. First, we double check to make sure that
  //we have at least 3 values. This is more "robustness".
  if ( xy.length == 2) {
    pp.x = xy[0];
    pp.y = xy[1];
    avgX[currentAvgIndex] = pp.x;
    avgY[currentAvgIndex] = pp.y;
    currentAvgIndex++;
    if (currentAvgIndex >= avgX.length) {
      currentAvgIndex = 0;
    }
    //print the array for debugging purposes.
    //  println(xy);
    float currentAvgX = 0;
    float currentAvgY = 0;
    for (int i = 0; i < avgX.length; i++) {
      currentAvgX = currentAvgX + avgX[i];
      currentAvgY = currentAvgY + avgY[i];
    }
    p.x = currentAvgX/avgX.length;
    p.y = currentAvgY/avgY.length;
    //if (currentAvgIndex == 4) {
      println("AVG X Y: " + p.x + " " + p.y);
      //println("AVG Y: " + p.y);
      
    //}
  }


  if (startgame) {
    if (p.x <= TA1 && p.x >= TA0 && p.y <= TB1 && p.y>= TB0) {
      sc.playNote(C1, 100, 5.0);
      //    square[0] = new Square(0, 0);
      square[8].play();
    }

    if ( p.x <= TA2 && p.x >= TA1 && p.y <= TB1 && p.y >= TB0) {
      sc.playNote(C2, 100, 5.0);
       //  square[1] = new Square(300, 0);
      square[7].play();
    }

    if (p.x <= TA3 && p.x>= TA2 && p.y <= TB1 && p.y >= TB0) {
      sc.playNote(C3, 100, 5.0);
      //  square[2] = new Square(600, 0);
      square[6].play();
    }

    if (p.x <= TA1 && p.x >= TA0 && p.y <=TB2 && p.y >=TB1) {
      sc.playNote(C4, 100, 5.0);
       //   square[3] = new Square(0, 300);
      square[5].play();
    }
    if (p.x <= TA2 && p.x >= TA1 && p.y <= TB2 && p.y >= TB1) {
      sc.playNote(C5, 100, 5.0); 
      //    square[4] = new Square(300, 300);
      square[4].play();
    }
    if (p.x <= TA3 && p.x >= TA2 && p.y <= TB2 && p.y >= TB1) {
      sc.playNote(C6, 100, 5.0);
      //    square[0] = new Square(600, 300);
      square[3].play();
    }
    if (p.x <= TA1 && p.x >= TA0 && p.y <= TB3 && p.y >= TB2) {
      sc.playNote(C7, 100, 5.0);
      //  square[0] = new Square(0, 600);
      square[2].play();
    }
    if (p.x <= TA2 && p.x >= TA1 && p.y <= TB3 && p.y >= TB2) {
      sc.playNote(C8, 100, 5.0);
      //square[0] = new Square(300, 600);
      square[1].play();
    }
    if (p.x <= TA3 && p.x >= TA2 && p.y <= TB3 && p.y >= TB2) {
      sc.playNote(C9, 100, 5.0);
      //  square[0] = new Square(600, 600);
      square[0].play();
    }
  }
}

