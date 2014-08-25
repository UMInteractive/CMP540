/*
Generative Art

Left click to clear the screen
Right click to pause screen
*/

int num;
float angle;
float r;
float a;
float s;

void setup() 
{
  s = random(10,30);
  size(450,450);
  background(255);
  smooth();
  a = random(1);   
  angle = 0.0;
}

void draw() 
{
  // 
  stroke(50,random(150,255),255);
  
  num = 12;
  translate (mouseX, mouseY);
  float scalar = sin( angle * num ) + 2;
  scale( scalar );
  strokeWeight( 1.0 / scalar );
  rotate( angle );
  ellipse( s, s, s, s );
  angle += a * ( ( 1 + sqrt(5) ) / 3 ); //changing the denominator produces interesting results
}

void mousePressed() 
{
  if (mouseButton == RIGHT) 
  {
    noLoop();
    endRecord();
  }
  else 
  {
    a = 1;
    loop();
    setup();
  }
}

