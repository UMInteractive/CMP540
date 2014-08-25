//Eliot Allan Rodriguez
//Practice: Looped Shape
//             9/14/2013

//Mouse movement on X Axis controls movement speed
// Program scales to width and height defined by size()


float frameSpeed = 1.0;


void setup()
{
  size(800, 800);
}


void draw()
{
 background(0); //refresh background 


//MOUSE INTERACTION ON X AXIS CONTROLS SPEED OF MOVEMENT
  // Scale mouse range to control speed
  frameSpeed = map(mouseX, 1, width, 1, 30);
  frameRate(frameSpeed); //Redraw speed




//LOOPED DRAWING
  for(float x = width/4; x < (width/4) * 3.4; x = x + (width * .10))
  {
    for(float y = height/4; y < (height/4) * 3.4; y = y + (height * .10))
    {
    fill(255); 
    ellipse(x, y, random(width * .10), random(height * .10));
    }
  }
  

//CENTRAL ELLIPSE

   fill(0);
   rect(width * .4, height * .4, width * .2, height * .2);
   fill(random(255), random(255), random(255));
   ellipse(width/2, height/2, random(width * .2), random(height * .2));
}

