class Particles
{

//EASING
float easing = random(0.05, 0.01);
float parSize = random(.5, 5);
float startX;
float startY;
float targetX;
float targetY;


//stores the outline stream from the video for loop as needed
float outlineX;
float outlineY;

float gval;
float bval;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  
//Particles Constructor
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  
  Particles()
  {
   startX = random(video.width); // Start point
   startY = random(video.height); //random(video.height);
   targetX = random(video.width); // target point
   targetY = random(video.height);  
  }
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  
 
  
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////    
//particle: keep track of motion of a specific particle and   
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  
  void particle()
 {  
   //background(0);
  startX += (targetX - startX) * easing;
  startY += (targetY - startY) * easing;

//If a new target hasn't been set by the pixel motion loop.. assign a new target to this pixel
  if((int)startX == (int)targetX)
  {
      targetX = random(width);
      targetY = random(height);   
  }
  //Draw the particle
  fill(255);
  ellipse(startX, startY, parSize, parSize); 
 }
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  
 
 
 
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////    
//setTarget: Constantly Sets possible target numbers for when the object ellipse reaches its destination and needs a new coordinate
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////   
void setTarget(int x, int y)
{
  outlineX = x;
  outlineY = y;

  if(outlineX != 0)
  {
   targetX = outlineX; 
   targetY = outlineY;
  } 
}//End Void
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////   


} //End Particle Class
  
  
  
  
  
  

