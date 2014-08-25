// ProcessingJS

PVector ball;
PVector speed;
boolean pause = true;
boolean done = false;
int[] blocks;
int score = 0;
int lives = 3;
int board_size = 700;
int blocks_num = 7;
int block_scale = 95;
int block_width = 100;
int paddle_width = 100;

void setup() 
{
  size(board_size,board_size);
  smooth();
  strokeWeight(3);
  fill(128);
  stroke(255);
  frameRate(25);
  
  // instantiate vectors
  ball = new PVector(width/2, height/2);
  speed = new PVector(20, -7);
  
  // set logical blocks
  blocks = new int[blocks_num];
  
  for( int x = 0; x < blocks_num; x++ ) 
  {
    blocks[x] = 1;
  }  
}


void draw() 
{
  background(0);  

  done = true;

  // draw blocks
  for( int x = 0; x < blocks_num; x++ )
  {
    // keep playing
    if ( blocks[x] > 0 && lives > 0 ) 
    {
      done = false;
      fill( 128 );
      rect( 10 + x * block_scale, 100, block_width, 40 );
    }
  }
  
  // end game
  if ( done ) 
  {
    pause = true;
    fill(255);
    
    textSize(32);
    text( "Score: ", 250, height/2 + 50 );
    text( score, 350, height/2 + 50 );
    
    textSize(80);
    if ( lives > 0)    
    {
      text( "Finish!", 200, height/2 );
    }
    else
    {
      text( "Game Over!", 80, height/2 );
    }

  }

  // pause game
  if ( pause ) 
  {
    textSize( 32 );
    fill( 128 );
    text( "Click to PLAY..", 250, 550 );
    
    text( "Score: ", 10, 80 );
    text( score, 120, 80 );
    text( "Lives: ", 500, 80 );
    text( lives, 595, 80 );
  }

  // continue game
  if ( !pause ) 
  {
    update();
    text( "Score: ", 10, 80 );
    text( score, 120, 80 );
    text( "Lives: ", 500, 80 );
    text( lives, 595, 80 );
  }

  // Draw ball and paddle
  ellipse( ball.x, ball.y, 50, 50 );
  rect( mouseX -(paddle_width/2), width-50, paddle_width, 40 );

}


void update() 
{
  // add speed vector to ball vector
  ball.add(speed);
  
  // change horizontal direction
  if ( ball.x + 50 > width || ball.x - 50 < 0 )
  {
    speed = new PVector(-speed.x, speed.y);
  }
  
  // change top vertical direction
  if ( ball.y - 50 < 0 )
  {
    speed = new PVector( speed.x, -speed.y );
  }

  // change bottom vertical direction
  if ( ball.y > height ) 
  {
    // missed ball
    speed = new PVector( speed.x, -speed.y );
    ball = new PVector( width/2, height/2 );
    pause = true;
    lives -= 1;
    
    if( lives == 0)
    {
      done = true;
    }
  }
  
  // check if the ball was hit by the paddle and change ball speed
  if ( (ball.y >= width-80) && (ball.x >= mouseX - paddle_width/2) && (ball.x <= mouseX + paddle_width/2) ) 
  {
    speed = new PVector( int (map( ball.x - mouseX, -(paddle_width/2), paddle_width/2, -50, 50 ) ), -speed.y );
  }

  // check if the ball hits a block
  for( int x = 0; x < blocks_num; x++) 
  {
    if ( blocks[x] > 0 )
    {
      if ( ( (ball.x + 50) > (50 + x * block_scale) ) && 
     ( (ball.x - 50) < (50 + x * block_scale + block_width) ) &&
     ( (ball.y + 50) >  100 ) &&
     ( (ball.y - 50) <  100) )
      {
        blocks[x] = 0;
  
        // change speed in vertical direction if the block has been hit
        // on top or bottom
        if ( (ball.x > 50 + x * block_scale) && (ball.x < 50 + x * block_scale + block_width) ) 
        {
          speed = new PVector( speed.x, -speed.y );
        }
  
        // change the speed in horizontal direction if the block has been hit on the side
        if ( (ball.y > 50) && (ball.y < 80) ) 
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
    for( int x = 0; x < blocks_num; x++ ) 
    {
      blocks[x] = 1;
    }
    
    score = 0;
    lives = 3;    
    ball = new PVector( width/2, height/2 );
    speed = new PVector( 20, -8 );
    done = false;
  }
}
