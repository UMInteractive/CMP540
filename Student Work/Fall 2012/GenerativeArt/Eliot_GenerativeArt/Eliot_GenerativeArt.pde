//Eliot Allan Rodriguez
//Generative Art   10/15/2013




Randest myRandest[] = new Randest[8];

float[] p = new float[8];
int windowSize = 1000;

void setup()
{
  size(windowSize, windowSize);
  background(0);
  noFill();
  smooth();
 
 
 //Assign random number generators
  for(int i = 0; i < 8; i++)
  {
    myRandest[i] = new Randest();
  }
}// end void setup



void draw()
{
  frameRate(60);
 
     //assign bezier variable to a number generator
     for(int u = 0; u < 8; u++)
    {
       p[u] = myRandest[u].nextMove();
    }
 
 //Create Generative Art
 stroke(255, 250, 255, 20);
 bezier(p[0], p[1], p[2], p[3], p[4], p[5], p[6], p[7]);
}
