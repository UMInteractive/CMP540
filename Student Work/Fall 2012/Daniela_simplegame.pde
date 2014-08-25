PVector ball;
PVector speed;
boolean pause = true;
boolean done = false;
int[] blocks;
int score = 0;

void setup() 
{
  size(300,300);
  smooth();
  strokeWeight(3);
  fill(128);
  stroke(255);
  frameRate(25);
  
  // instantiate vectors
  ball = new PVector(width/2, height/2);
  speed = new PVector(10, -5);
  
  // set logical blocks
  blocks = new int[7];
  
  for( int x = 0; x < 7; x++ ) 
  {
    blocks[x] = 1;
  }  
}


void draw() 
{
  background(0);  

  done = true;

  // draw blocks
  for( int x = 0; x < 7; x++ )
  {
    // keep playing
    if ( blocks[x] > 0 ) 
    {
      done = false;
      fill( 128 );
      rect( 10 + x * 40, 10, 40, 20 );
    }
  }
  
  // end game
  if ( done ) 
  {
    pause = true;
    fill(255);
    textSize(40);
    text( "Finish!", 50, 150 );
    text( "Score: ", 50, 200 );
    text( score, 185, 200 );
  }

  // pause game
  if ( pause ) 
  {
    textSize( 16 );
    fill( 128 );
    text( "Click to PLAY..", 10, 250 );
  }

  // continue game
  if ( !pause ) 
  {
    update();
    text( "Score: ", 10, 250 );
    text( score, 70, 250 );
  }

  // Draw ball and paddle
  ellipse( ball.x, ball.y, 20, 20 );
  rect( mouseX - 35, 270, 70, 20 );

}


void update() 
{
  // add speed vector to ball vector
  ball.add(speed);
  
  // change horizontal direction
  if ( ball.x + 10 > width || ball.x - 10 < 0 )
  {
    speed = new PVector(-speed.x, speed.y);
  }
  
  // change top vertical direction
  if ( ball.y - 10 < 0 ) 
  {
    speed = new PVector( speed.x, -speed.y );
  }

  // change bottom vertical direction
  if ( ball.y + 10 > height ) 
  {
    speed = new PVector( speed.x, -speed.y );
    ball = new PVector( width/2, height/2 );
    
    // missed ball
    pause = true;
  }
  
  // check if the ball was hit by the paddle and change ball speed
  if ( (ball.y >= 260) && (ball.x >= mouseX - 35) && (ball.x <= mouseX + 35) ) 
  {
    speed = new PVector( int (map( ball.x - mouseX, -35, 35, -10, 10 ) ), -speed.y );
  }

  // check if the ball hits a block
  for( int x = 0; x < 7; x++) 
  {
    if ( blocks[x] > 0 ) 
    {
      if ( (ball.x + 10 > 10 + x * 40) && (ball.x - 10 < 10 + x * 40 + 40) && (ball.y + 10 > 10 && ball.y - 10 < 30) ) 
      {
        blocks[x] = 0;
  
        // change speed in vertical direction if the block has been hit
        // on top or bottom
        if ( (ball.x > 10 + x * 40) && (ball.x < 10 + x * 40 + 40) ) 
        {
          speed = new PVector( speed.x, -speed.y );
        }
  
        // change the speed in horizontal direction if the block has been hit on the side
        if ( (ball.y > 10) && (ball.y < 30) ) 
        {
          speed = new PVector( -speed.x, speed.y );
        }

        // increment score
        score += 1;        
      }
    }
  }
}


void mousePressed() 
{
  pause = !pause;

  // set new game
  if ( done ) 
  {
    for( int x = 0; x < 7; x++ ) 
    {
      blocks[x] = 1;
      score = 0;
    }
    
    ball = new PVector( width/2, height/2 );
    speed = new PVector( 10, -5 );
    done = false;
  }
}
