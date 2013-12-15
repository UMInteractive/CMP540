class CollisionTracker
{
  boolean fortHit = false;
  boolean shieldDeflect = false; 
  float fortRad;
  float attackRad;
  float shieldRad;

//////////////////////////////////////////////////////////////////////////////  
//CollisionTracker Constructor  
//////////////////////////////////////////////////////////////////////////////    
  CollisionTracker(float fRad, float aRad, float sRad)
  {
   fortRad = fRad;
   attackRad = aRad;
   shieldRad = sRad;
  }
//////////////////////////////////////////////////////////////////////////////  


//////////////////////////////////////////////////////////////////////////////  
//fortCollide: Determines if fort or shield were hit
//////////////////////////////////////////////////////////////////////////////    
void fortCollide(float xPos, float yPos, float sxPos, float syPos)
  {
    float x = xPos; //Attacker xpos
    float y = yPos; //attacker ypos
    float sx = sxPos + width/2;
    float sy = syPos + height/2;
    
 
  
    float fDist; // variable to hold current fort/attacker distance
    float sDist; // variable to hold current Shield/attacker distance
    
    //Find the distance between both ellipse centers
    sDist = sqrt(sq(x - sx/2) + sq(y - sy/2));
    fDist = sqrt(sq(x - width/2) + sq(y - height/2));
    
    //Has the Shield Deflected a direct hit?
    if(sDist < shieldRad + 20)
    {
    shieldDeflect = true;
    }
    else
    {
    shieldDeflect = false;
    }  
     
   
   //If dist is smaller than the summed radius's the ellipses are colliding
   if(fDist < (fortRad + 10))
    {
    fortHit = true;
    }
    else
    {
    fortHit = false;
    }  
  }
//////////////////////////////////////////////////////////////////////////////  


//////////////////////////////////////////////////////////////////////////////  
//fortStat: returns whether or not fort was hit
//////////////////////////////////////////////////////////////////////////////  
boolean fortStat()
{
  if(fortHit == true)
  {
    return true;   
  }
  else
  {
    return false;
  }
  
}
//////////////////////////////////////////////////////////////////////////////  


//////////////////////////////////////////////////////////////////////////////  
// shieldBlock: return whether or not shield successfully blocked attack
//////////////////////////////////////////////////////////////////////////////  
boolean shieldBlock()
{
  if(shieldDeflect == true)
  {
    return true;    
  }
  else
  {
    return false;
  }  
}
//////////////////////////////////////////////////////////////////////////////    
}
