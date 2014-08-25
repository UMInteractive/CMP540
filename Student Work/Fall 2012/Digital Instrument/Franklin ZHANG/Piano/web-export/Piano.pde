Key key1;
Key key2;
Key key3;
Key key4;
Key key5;
Key key6;
Key key7;
Key key8;
Key keyWhite;
PFont font;
PFont font2;
float x;
float y;
float radius;
int ellipseColor;

import ddf.minim.*;
Minim minim;
AudioSample keySound1;
AudioSample keySound2;
AudioSample keySound3;
AudioSample keySound4;
AudioSample keySound5;
AudioSample keySound6;
AudioSample keySound7;
AudioSample keySound8;


void setup()
{
  background(0);
  size(1000, 500);
  smooth();


  minim = new Minim(this);
  keySound1 = minim.loadSample("1.MP3");
  keySound2 = minim.loadSample("2.MP3");
  keySound3 = minim.loadSample("3.MP3");
  keySound4 = minim.loadSample("4.MP3");
  keySound5 = minim.loadSample("5.MP3");
  keySound6 = minim.loadSample("6.MP3");
  keySound7 = minim.loadSample("7.MP3");
  keySound8 = minim.loadSample("8.MP3");

  key1 = new Key(20);
  key2 = new Key(140);
  key3 = new Key(260);
  key4 = new Key(380);
  key5 = new Key(500);
  key6 = new Key(620);
  key7 = new Key(740);
  key8 = new Key(860);
  keyWhite = new Key(20);
  keyWhite.keyColor = color(255, 255, 255);
}

void draw()
{


  font =loadFont("ARJULIAN-48.vlw");
  textFont(font);
  textSize(45);
  fill(255, 255, 255);
  text("Scale:", 20, 80);
  text("   C-       C        D        E         F        G        A        B", 20, 150); 

  key1.display();
  key2.display();
  key3.display();
  key4.display();
  key5.display();
  key6.display();
  key7.display();
  key8.display();

  font2  = loadFont("AgencyFB-Bold-48.vlw");
  textFont(font2);
  fill(0, 0, 0);
  text("     a          s            d            f             j            k            l            ;", 20, 380);
}


//void drawEllipse()
//{
//  noStroke();
//  x = random(1000);
//  y = random(500);
//  ellipseColor = color(random(255), random(255), random(255));
//  radius = random(400, 600);
//  fill(ellipseColor, 100);
//  for (float i=radius;i>=0;i--)
//  { 
//
//    ellipse(x, y, i, i);
//    i-=10;
//  }
//}

void keyPressed()
{
  if (key == 'a')
  {
    keySound1.trigger();


    keyWhite.x = 20;
    keyWhite.display();
    //drawEllipse();
  }

  if (key == 's')
  {
    keySound2.trigger();
    keyWhite.x = 140;
    keyWhite.display();
    //drawEllipse();
  }

  if (key == 'd')
  {
    keySound3.trigger();
    keyWhite.x = 260;
    keyWhite.display();
    //drawEllipse();
  }

  if (key == 'f')
  {
    keySound4.trigger();
    keyWhite.x = 380;
    keyWhite.display();
    //drawEllipse();
  }

  if (key == 'j')
  {
    keySound5.trigger();
    keyWhite.x = 500;
    keyWhite.display();
    //drawEllipse();
  }

  if (key == 'k')
  {
    keySound6.trigger();
    keyWhite.x = 620;
    keyWhite.display();
    //drawEllipse();
  }

  if (key == 'l')
  {
    keySound7.trigger();
    keyWhite.x = 740;
    keyWhite.display();
    //drawEllipse();
  }

  if (key == ';')
  {
    keySound8.trigger();
    keyWhite.x = 860;
    keyWhite.display();
    //drawEllipse();
  }
}

class Key
{
  color keyColor;
  int x;
  int keyWidth;
  int keyHeight;

  Key(int _x)
  {
    x = _x;
    keyWidth = 100;
    keyHeight = 200;
    keyColor = color(random(255), random(255), random(255));
  }

  void display()
  {
    fill(keyColor);
    rect(x, 200, keyWidth, keyHeight);
  }

//  void walk()
//  {
//    x++;
//  }
}


