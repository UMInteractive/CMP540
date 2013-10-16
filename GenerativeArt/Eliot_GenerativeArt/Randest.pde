class Randest
{
  float nMove;
  float easing;
  float x;
  
 
  // Sets Random 
  Randest()
  {
    x = random(300); // current position
    nMove = random(300); // future position
    easing = 0.02; // Affects speed of line rendered. slower: pronounced faster: messier
  }
  
  
  //Function Generates next target point and a stream of numbers rising or declining towards target
  float nextMove()
  {
   // Generates a stream of numbers and uses easing to create move fluid motion.  
   float dx = nMove - x;
    
   if(abs(dx) >= 1)
   {
   x += (dx * easing);
   }
   else
   {
    nMove = random(width); // set the next target point
   
   }
   return x; //Return Stream of numbers
   }
  } 

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

