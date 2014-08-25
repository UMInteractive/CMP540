// maximun number of elements in the array
int max = 800;

// array for x coordinate of the shape
int[] Xcoord = new int[max];

// array for y coordinate of the shape
int[] Ycoord = new int[max]; 

// array for x speed of the shape
int[] Xspeed = new int[max];

// array for y speed of the shape
int[] Yspeed = new int[max];

// array for diameter of the shape
int[] diameter = new int[max];

// array for the ShapeColor of the shape
int[] ShapeColor = new int[max]; 

void setup() 
{ 
  size(450, 450);
  
  //change the color mode to HSB
  colorMode(HSB, 255);

  noStroke();
 
  // loop through every element in the arrays
  // set the positions to random values
  for (int i = 0; i < max; i++) 
  {
    Xcoord[i] = int(random(0, width));
    Ycoord[i] = int(random(0, height));
    Xspeed[i] = int(random(1, 5));
    Yspeed[i] = int(random(1, 5));
    diameter[i] = int(random(10, 30));
    ShapeColor[i] = int(random(0, 255));
  }
}
 
void draw() 
{
  background(10);
   
  // function to bounce the shape
  bouncing();
  
  // function to move the shape
  moving();
  
  // function to draw the shape
  drawing();
}
 
// function to draw the shape
// loop through array and draw each shape accordingly
// to its Xcoord, Ycoord, diameter and color
void drawing() 
{
  for (int i = 0; i < max; i++) 
  {
    fill(ShapeColor[i], 200, 255, 120);
    ellipse(Xcoord[i], Ycoord[i], diameter[i], diameter[i]);
  }
}

// function to move the shape
// loop through array and move the shape accordingly to its speed
// in a random way
void moving() 
{
  for (int i = 0; i < max; i++) 
  {
    Xcoord[i] += Xspeed[i];
    Ycoord[i] += Yspeed[i];
  }
}

// function to bounce the shape
// loop through array and check if the shape has reach the edge
// if so, change its direction
void bouncing()
{
  for (int i = 0; i < max; i++) 
  {
    if (Xcoord[i] < diameter[i]/2) 
    {
      Xspeed[i] = -Xspeed[i];
      Xcoord[i] = diameter[i]/2;
    }
 
    if (Xcoord[i] > width-diameter[i]/2) 
    {
      Xspeed[i] = -Xspeed[i];
      Xcoord[i] = width-diameter[i]/2;
    }
 
    if (Ycoord[i] < diameter[i]/2) 
    {
      Yspeed[i] = -Yspeed[i];
      Ycoord[i] = diameter[i]/2;
    }
 
    if (Ycoord[i] > height-diameter[i]/2) 
    {
      Yspeed[i] = -Yspeed[i];
      Ycoord[i] = height-diameter[i]/2;
    }
  }
}
