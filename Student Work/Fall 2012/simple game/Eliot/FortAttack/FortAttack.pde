//Eliot Allan Rodriguez
// Mastery Assignment: Simple Game (Fort Attack)


Fort saveFort;
Attacker attack;
CollisionTracker checker;
Scoreboard score;


int gameSize = 500; 
boolean gameStatus = true;
boolean gameStart = true;

///////////////////////////////////////////////////////////////////////////////
void setup()
{
  size(gameSize, gameSize);
  background(0);
 
  saveFort = new Fort();
  attack = new Attacker(saveFort.fortRad());
  checker = new CollisionTracker(saveFort.fortRad(), attack.aRad(), saveFort.shieldRad());
  score = new Scoreboard();
  
}
///////////////////////////////////////////////////////////////////////////////


///////////////////////////////////////////////////////////////////////////////
void draw()
{
  if(gameStart)
  {
  background(255);
  fill(0);
  strokeWeight(10);
  stroke(0, 180, 0);
  ellipse(width/2, height/2, width/3, height/3);

  textSize(16);
  fill(255);
  text("FORT ATTACK", 180, 250); 
  fill(0);
  text("Press Enter/Return to begin", 270, 480); 

  textSize(12);
  
    if(keyPressed)
    {
       if(key == ENTER || key == RETURN)
       {
        gameStart = false;
       }
    }
  } //First If
  else
  {  
   if(gameStatus == true)
   {
    background(0);
    score.display();

    //Fort & Attacker 
    attack.attacker(); // determines attacker's current position
    saveFort.theFort(0); //Maintains fort structure
    saveFort.fortShield(); //controls the Fort's operational shield.
 

  //Is Fort Hit? CollideTracker: verify if collision occurs Attacker: Bounce ball away score: subtract
   checker.fortCollide(attack.xPos(), attack.yPos(), saveFort.shieldX(), saveFort.shieldY()); //Verify Fort Collision?
   saveFort.fortReport(checker.fortStat(), checker.shieldBlock()); //Return intel info to the Fort
   attack.attackReport(checker.fortStat(), checker.shieldBlock()); //Return intel info to the Attacker
  
  saveFort.fortShield(); 
  score.scoreTally(checker.fortStat()); //Calculate Score
  gameStatus = score.gameStatus();
  }
  
  if(gameStatus == false)
  {
   score.runGameOver();
   attack.attacker(); // determines attacker's current position
   
    if(keyPressed)
    {
       if(key == ENTER || key == RETURN)
       {
        gameStatus = true;
        score.gameReset();
       }
    }
  }
  
 }
}
//////////////////////////////////////////////////////////////////////////////  





