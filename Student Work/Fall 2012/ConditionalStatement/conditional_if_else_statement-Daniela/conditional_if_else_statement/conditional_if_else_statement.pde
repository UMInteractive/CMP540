
// Global Variables
int clicks = 0;
color darkGray = color(0xCCCCCC, 255);


void setup () 
{
  size(450, 450);
  background(255);
}

void draw() 
{
  // clear the screen
  background(255);

  // conditional 'if - else' statements with value/variable 'clicks' 
  if (clicks == 1)  
  {
      // ellipse to red
      fill(255, 0, 0);
  }
  else if (clicks == 2)
  {
      // ellipse to green
      fill(0, 255, 0);   
  }
  else if (clicks == 3)
  {
      // ellipse to blue
      fill(0, 0, 255);
  }
  else if (clicks == 4)
  {
      // ellipse to blue
      fill(0, 0, 0);
  }   
  else
  {
      // ellipse to white
      fill(255, 255, 255);
  }

  // Draw a circle 
  stroke(darkGray);
  ellipse(width/2, height/2, 200, 200); 
}

// Mouse Clicks Listener
void mouseClicked() 
{
  // increment the click counter
  clicks++;
}

