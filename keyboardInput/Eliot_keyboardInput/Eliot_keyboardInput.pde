//Eliot Allan Rodriguez
//Keyboard Input Sketch: CMP540

/* Press keys on the keyboard to create your own network patterns
   SPACEBAR will clear your design and set a new background color for your next pattern */



float keyTouch = 0;
float circleSize;
float circleWidth;
float circleHeight;
float pastW;
float pastH;
float strokeR = 0;
float strokeG = 0;
float strokeB = 0;
float strokeFadeR;
float strokeFadeG;
float strokeFadeB;
boolean spaceBarPressed = false;
String titleIt = "Keyboard Input: CMP540";
String author = "Eliot Allan Rodriguez";
String instruction = "Press keys on the keyboard to create your own network patterns. \n \n SPACEBAR will clear your design and set a new background color for your next pattern.";

void setup()
{
    size(700, 700);
    background(0);
       smooth();
    //Draw this static intro slide to be deleted upon first key press
    text(author, 10, 10, 200, 15);  
    text(titleIt, 10, 30, 200, 15);  
    text(instruction, 50, 100, 300, 300);  
    
    
    
    ellipse(height/2, width/2, 50, 50);
    ellipse(width/3,height/3, 10, 10);
    ellipse((width/3) - 100, (height/3), 20, 20);
    stroke(255);
    line(height/2, width/2, width/3,height/3);
    line(height/3, width/3, width/3 - 100,height/3);
}


void draw()
{
  
      // Setup stroke color fade always to white
      strokeFadeR = map(keyTouch, 0, 100, strokeR, 255);
      strokeFadeG = map(keyTouch, 0, 100, strokeG, 255);
      strokeFadeB = map(keyTouch, 0, 100, strokeB, 255);
  
   if(spaceBarPressed)
    {
      //Pick a new Destination color for stroke fade to begin from & new background color
      strokeR = random(255);
      strokeG = random(255);
      strokeB = random(255);
      

      background(strokeR, strokeG, strokeB);
      spaceBarPressed = false; 
      keyTouch = 2; //reset so that next drawing without text is ready
    }

    else
    {
      if(keyTouch == 1.0)
      //First keypress erase the background and draw a circle by advancing keyTouch to 2
      {
       background(0);
       keyTouch = 2;
      }
      
      if(keyTouch > 2)
      {
          // draw new line and circle position
      stroke(strokeFadeR, strokeFadeG, strokeFadeB);
      line(circleWidth, circleHeight, pastW, pastH);
      }
      noStroke();
      ellipse(circleWidth, circleHeight, circleSize, circleSize);
    } 
}


void keyPressed()
{
  // set past circle location values
      pastW = circleWidth;
      pastH = circleHeight;
  
      
      circleSize = random(6, 30);
      circleWidth = random(width);
      circleHeight = random(height);
      keyTouch = keyTouch + 1; // keep count
      
    if( key == ' ')
    //if spacebar is pressed set value to true to erase screen and begin with new background color
    {
     spaceBarPressed = true;
    }
  
     // println("previous w = " + pastW + "previous H = " + pastH + "circleW = " + circleWidth + "circleH = " + circleHeight);
}
