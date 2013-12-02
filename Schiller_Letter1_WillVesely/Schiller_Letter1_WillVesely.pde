//---------------------------------------//-----------------------------------------//

//
//                          Letter I.    -     Will Vesely
//

//
//           Aesthetical and Philosophical Essays by Frederick Schiller
//          Document aquired from Project Gutenberg (www.gutenberg.org).
//

//
//      This work is inspired by Jonathan Fienberg's - Wordle (www.wordle.net)
//

//
//  Code for this project is inspired by, and in sompelaces directly borrowed from:
//    Processing: Creative Coding and Generative Art in Processing 2
//    By Ira Greenberg, Dianna Xu, and Deepak Kumar
//    Friends of Ed (An APress Company), 2013
//    ISBN-13 978-1430244646
//

//---------------------------------------//-----------------------------------------//

String inputTextFile = "Letter1.txt";
WordFreq table;
PFont font;
int N = 150;

void setup() {

  String [] fileContents = loadStrings(inputTextFile);
  String rawText         = join(fileContents, " ");
  rawText                = rawText.toLowerCase();
  String [] tokens;
  String delimiters      = " ,./<>?;':'\"[{]}\\|+=_-)(*&^%$#@!~`";
  tokens                 = splitTokens(rawText, delimiters);

  size(1000, 1000, OPENGL);
  font                    = createFont("Bangla MN", 120);
//font = loadFont("BanglaMN-95.vlw");

  textFont(font, 20);
  textSize(24);
  noLoop();

  table                  = new WordFreq(tokens);
  table.arrange(N);
} //setup

void draw() {
  background(255);

  pushMatrix();
  translate(99, 200);
  table.display(N);
  popMatrix();
} //draw

