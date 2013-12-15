// Eliot Allan Rodriguez
// Drawing Tool - Mastery

import processing.video.*; //Video Library
Capture video; //Instance of a capture object


//Instantiate Array of Particle objects
Particles[] myDot = new Particles[800]; //Amount of random particles


PImage oldFrame; //Previous frame slice for analysis
float tH = 40; //Intensity of Threshold

//Display Size
int dispW; 
int dispH; 
//particle Counter
int i = 0;
int e = 0;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  
void setup()
{
  dispW = 1024;
  dispH = 768;
  
  size(dispW, dispH);
  
  //declare instantiated video object
  video = new Capture(this, width, height); 
  oldFrame = createImage(video.width,video.height,RGB);
  video.start();
  
  
  
  //Don't add stroke to any ellipses
  noStroke(); 
  
   //Declare all my dot objects
  for(int i = 0; i < myDot.length; i++)
  {
   myDot[i] = new Particles(); 
  }  
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  
void draw()
{
  frameRate(21);
  background(0);
  
  
    if (video.available()) 
    {
    // Save previous frame for motion detection!!
    oldFrame.copy(video, 0, 0, video.width, video.height, 0, 0, video.width, video.height); // save previous frame data
    oldFrame.updatePixels();
    video.read();
    }
  
    loadPixels();
    video.loadPixels();
    oldFrame.loadPixels();
  
   // Begin loop to walk through every pixel to find motion
  for (int x = 0; x < video.width; x = x + 2) 
  {
    for (int y = 0; y < video.height; y = y + 2) 
    {
      int loc = x + y*video.width; // Find Pixel Location
      
      
      color current = video.pixels[loc]; //array holding current pixel color
      color previous = oldFrame.pixels[loc]; //array holding previous color
      
      // Step 4, compare colors (previous vs. current) Bit shifting
      float r1 = current >> 16 & 0xFF; 
      float r2 = previous >> 16 & 0xFF; 

      float g1 = current >> 8 & 0xFF; 
      float g2 = previous >> 8 & 0xFF; 

      float b1 = current & 0xFF; 
      float b2 = previous & 0xFF; 

      float diff = dist(r1,g1,b1,r2,g2,b2); //Calculate the differences
      

      // If the color at that pixel has changed, then there is motion at that pixel.
      if (diff > tH) 
      { 
        if(e == 2) // e cuts the work  being processed (every 3rd time around draw; otherwise don't draw)
        {
        // If motion, display white
        fill(255);
        float pSize = random(6);
        ellipse(x, y, pSize, pSize); 
       
        myDot[i].setTarget(x, y); //set a target to any particle that is looking for a new target
        e = 0;
        }
        e++;
      } //end IF    
    }//END Y FOR 
  }//END X FOR

//Draw Particle Canvas
for(int i = 0; i < myDot.length; i++)
{
      myDot[i].particle();
}
}//END DRAW


