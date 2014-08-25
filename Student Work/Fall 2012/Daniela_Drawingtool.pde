
*/
// import arb.soundcipher.*;
// import arb.soundcipher.constants.*;

// window dimension
int Ww = 800;
int Wh = 600;

// canvas dimension
int Cx = 0;
int Cy = 0;
int Ch = Wh - 130;
int Cw = Ww;

// default ink color
color InkColor = 0;

// default stroke
int InkStroke = 10;

// random color control variable
int RandomColor = 0;

// sound variables
// SoundCipher sc = new SoundCipher(this);
// float[] pitchSet = {57, 60, 60, 60, 62, 64, 67, 67, 69, 72, 72, 72, 74, 76, 79};
// float setSize = pitchSet.length;


void setup() 
{
 size (Ww, Wh); 
 background(255);
 smooth();
 
 
 PFont f;
 f = createFont("Helvetica", 10);
 textFont(f,18);
 
 // tools menu
 line(Cx, Ch, Cw, Ch);
 
 // brush size menu
 brush_size(10);
 
 // clear button
 clear_button();

 // color palette
 color_palette(InkColor);
 
}

// do nothing in loop
void draw() {}

// single clicks over tools area
void mousePressed() 
{
  // single color pick
  if ( mouseX > 150 && mouseX < Ww-200 && mouseY > Ch + 50 && mouseY < Ch + 126 )
  {
     loadPixels();
     InkColor = pixels[mouseX + width * mouseY];
     RandomColor = 0;
  }
    
  // random color pick
  if (mouseX > 450 && mouseX < 465 && mouseY > Ch + 50 && mouseY < Ch + 50 + 18) 
  {
      RandomColor = 1;
  }
  
  // inkstroke size
  if (mouseX > (Cx + 160 - 5) && mouseX < (Cx + 160 + 5) &&
      mouseY > (Ch + 25 - 5) && mouseY < (Ch + 25 + 5) &&
      InkStroke != 5)
  {
      brush_size(5);
  }
  if (mouseX > (Cx + 200 - 10) && mouseX < (Cx + 200 + 10) &&
      mouseY > (Ch + 25 - 10) && mouseY < (Ch + 25 + 10) &&
      InkStroke != 10) 
  {
      brush_size(10);
  }
  if (mouseX > (Cx + 240 - 15) && mouseX < (Cx + 240 + 15) &&
      mouseY > (Ch + 25 - 15) && mouseY < (Ch + 25 + 15) &&
      InkStroke != 15) 
  {
      brush_size(15);
  }
  if (mouseX > (Cx + 280 - 20) && mouseX < (Cx + 280 + 20) &&
      mouseY > (Ch + 25 - 20) && mouseY < (Ch + 25 + 20) &&
      InkStroke != 20)
  {
      brush_size(20);
  }

  // clear canvas
  if (mouseX > 350 && mouseX < 418 && mouseY > Ch + 15 && mouseY < Ch + 35) 
  {
    fill (255);
    noStroke();
    rect (0, 0, Cw, Ch);  
  }
  
}

void mouseDragged()
{
 // drawing mode 
 if (mouseY < Ch - 5 - InkStroke) 
 {
   if (RandomColor == 1) 
   {
     stroke(random(255), random(255), random(255));
   }
   else 
   {
     stroke(InkColor);
   }
   
   strokeWeight(InkStroke);
   line(pmouseX, pmouseY, mouseX, mouseY);
  }
  
  // play sound
  // sc.playNote( pitchSet[ (int)random(setSize) ], random(90)+30, random(20)/10 + 0.2 );
  
}

// brush size
void brush_size(int size) 
{
  // change stroke size
  InkStroke = size;

  // redraw tools area
  noStroke();
  fill (255);
  rect (Cx+100, Ch+1, 200, 48);
  
  // highlighting selected
  fill (255,255,0,150);
  
  // 5 point brush
  if (InkStroke == 5) 
  {
    ellipse (Cx + 160, Ch + 25, 30, 30); 
  }
  // 10 point brush
  if (InkStroke == 10) 
  {
    ellipse (Cx + 200, Ch + 25, 30, 30);
  }
  // 15 point brush
  if (InkStroke == 15) 
  {
    ellipse (Cx + 240, Ch + 25, 30, 30);
  }
  // 20 point brush
  if (InkStroke == 20) 
  {
    ellipse (Cx + 280, Ch + 25, 30, 30);
  }
  
  fill (0);
  ellipse(Cx + 160, Ch + 25, 5, 5);
  ellipse(Cx + 200, Ch + 25, 10, 10);
  ellipse(Cx + 240, Ch + 25, 15, 15);
  ellipse(Cx + 280, Ch + 25, 20, 20);
}

// clear button
void clear_button()
{
  fill (0);
  
  text("[CLEAR]", 350, Ch+30);
}

// color palette
void color_palette(color selection)
{
  // change color
  InkColor = selection;
  
  // margin off the left side of the screen
  int margin = 150;
  int Xspacer = 0;
  int Yspacer = 50;
  
  for (int red = 0; red < 255; red = red + 64)
  {
    for (int blue = 0; blue < 255; blue = blue + 64) 
    {
      for (int green = 0; green < 255; green = green + 64) 
      {
        fill (red, blue, green);
        rect (Cx + margin + Xspacer, Ch + Yspacer, 18, 18);
        Xspacer = Xspacer + 18;
      }
    }
    Xspacer = 0;
    Yspacer = Yspacer + 18;
  }
  
  // random color button
  fill (255,0,0);
  rect (450, Ch + 50, 5, 18);
  fill (0,255,0);
  rect (455, Ch + 50, 5, 18);
  fill (0,0,255);
  rect (460, Ch + 50, 5, 18);
}
