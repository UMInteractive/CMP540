
// Global Variables

// RGB colors
float r, g, b;

// Width and Height
float w, h;

void setup () 
{
  size(450, 450);
  background(255);
  
  // Improve image quality
  smooth();
  
  // Avoid infinite loop
  noLoop();
}

void draw() 
{
  // Reduce the frames per seconds to show
  frameRate(3);
  
  stroke(255);

  // Iterate into a range (loop)
  for (int i = 0; i < 200; i++ )
  {
    // generate random values for RGB colors
    r = int ( random (0, 255));
    g = int ( random (0, 255));
    b = int ( random (0, 255));
    
    // generate random values for position of the shape
    w = int ( random (50, 400));
    h = int ( random (50, 400));

    // set shape color
    fill(r,g,b);
  
    // Draw a circle (the primitive shape)
    ellipse(w,h,80,80);
  }  
}

