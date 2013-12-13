PINBALL

/* 
 * PinBall
 * Complex objects in an environment
 * Create objects that have many different methods 
 * and have them interact with each other in a sketch 
*/

// vector
final int UP = 0;
final int DOWN = 1;
final int RIGHT = 2;
final int LEFT = 3;
final int NONE = 4;

// parameters
int edge = 40;     // width of ball edge
int posX, posY;   // last ball position
int posHurdle = -1;   // last hurdle hit
int posMine = -1;   // last mine hit

// Objects, Array, Arraylists
Ball ball;
ArrayList hurdles;
ArrayList mines;

// display colors
int Red = 240;    // turn sketch Red when mine collision
int Green = 240; // Green value

void setup() 
{
  size(600, 600);
  smooth();
  strokeWeight(2);
  stroke(0);
  ellipseMode(CENTER);
  rectMode(CENTER);
   
  hurdles = new ArrayList();
  mines = new ArrayList();
   
  ball = new Ball(width/2, height/2, edge, 3, 3);
  posX = ball.getXpos();
  posY = ball.getYpos();

  // generate random hurdles and mines
  for (int j = 0; j < 30; j++)
  {
    int randomX, randomY;

    randomX = int(random(width/edge))*edge;
    randomY = int(random(height/edge))*edge;

    hurdles.add(new Hurdle(randomX, randomY, edge));

    do
    {
      randomX = int(random(width/edge))*edge;
      randomY = int(random(height/edge))*edge;
    }
    while(ball.check_hit(randomX, randomY));

    mines.add(new Mine(randomX, randomY, edge));
  }  
}
 
 
void draw() 
{
  background(Red, Green, Green);
  Obj_Interplay();
}

 
void Obj_Interplay()
{
  for (int i = hurdles.size() - 1; i >= 0; i--) 
  {
    Hurdle hurdle = (Hurdle) hurdles.get(i);
    Mine mine = (Mine) mines.get(i);
     
    // hit hurdle
    if (ball.check_hit(hurdle.getXpos(), hurdle.getYpos()) && i != posHurdle) 
    {
      int dir = hurdle.locate(posX, posY);
      ball.hit(dir, NONE);
      hurdle.hit();
      posHurdle = i;
    }

    // hit mine
    else if (ball.check_hit(mine.getXpos(), mine.getYpos()) && i != posMine) 
    {
      mine.hit();
      ball.turnEdge(-20);
      Red ++;
      Green --;
      posMine = i;
    }
     
    // process hit and state
    if (posHurdle == i) hurdle.last_hit(true);
    
    else hurdle.last_hit(false);
    
    if (posMine == i) mine.last_hit(true);
    
    else mine.last_hit(false);
    
    mine.check_state();
    hurdle.check_state();

    // show hurdles and mines
    hurdle.display();
    mine.display();
  }
   
  // ball animation
  ball.move();
  ball.display();
  posX = ball.getXpos();
  posY = ball.getYpos();
}


BALL

class Ball 
{
  int Xcoord;
  int Ycoord;
  int edge_width;
  int rad; // radius
  float Xspeed;
  float Yspeed;
  int posSide;
  int Opac;
   
  Ball(int x, int y, int w, float xsp, float ysp) 
  {
    Xcoord = x;
    Ycoord = y;
    edge_width = w;
    rad = edge_width/2;
    Xspeed = xsp;
    Yspeed = ysp;
    posSide = 4;
    Opac = 255;
  }
   
  int getXpos() 
  {
    return Xcoord;
  }
   
  int getYpos() 
  {
    return Ycoord;
  }
   
  void display() 
  {
    stroke(0);
    fill(20, 240, 200, Opac);
    ellipse(Xcoord, Ycoord, edge_width, edge_width);
    noStroke();
    fill(50, 150, 150);
    ellipse(Xcoord, Ycoord, rad, rad);
  }
   
  // change dir after collision
  void hit(int dir, int lim) 
  {
    posSide = lim;
    
    switch(dir) 
    {
      case UP:
      case DOWN:
        Yspeed *= -1;
        break;
      case RIGHT:
      case LEFT:
        Xspeed *= -1;
        break;
    }
  }
   
  // move ball
  void move() 
  {
    Xcoord += Xspeed;
    Ycoord += Yspeed;
    if (Xcoord + rad > width && posSide != RIGHT) 
    {
      hit(RIGHT, posSide);
      posSide = RIGHT;
    }
    else if (Xcoord - rad < 0 && posSide != LEFT) 
    {
      hit(RIGHT, posSide);
      posSide = LEFT;
    }
    if (Ycoord + rad > height && posSide != DOWN) 
    {
      hit(UP, posSide);
      posSide = DOWN;
    }
    else if (Ycoord - rad < 0 && posSide != UP) 
    {
      hit(UP, posSide);
      posSide = UP;
    }
  }
   
  // check for hit
  boolean check_hit(int x, int y) 
  {
    if (x > Xcoord - rad && x < Xcoord + rad && y > Ycoord - rad && y < Ycoord + rad) 
    {
      return true;
    }
    return false;
  }
   
  void turnEdge(int o) 
  {
    if (o != 255) Opac += o;
    else Opac = 255;
  }
   
  // return true if ball has hit too many mines
  boolean done() 
  {
    if (Opac < 0) 
    {
      return true;
    }
    return false;
  }   
}


MINE

class Mine 
{  
  int posX;
  int posY;
  int edge_width;
  int rad; // radius
  int Val;
  int state;
  int inOpac = 200;

  Mine(int x, int y, int w) 
  {
    posX = x;
    posY = y;
    edge_width = w;
    rad = edge_width/2;
    Val = 50;
  }
   
  int getXpos() 
  {
    return posX;
  }
   
  int getYpos() 
  {
    return posY;
  }
   
  void display() 
  {
    fill(0, 0, Val, 70);
    ellipse(posX, posY, edge_width, edge_width);
    fill(Val, 0, 0, inOpac);
    ellipse(posX, posY, rad, rad);
  }
   
  void hit() 
  {
    state = 10;
    if (Val == 20) 
    {
      Val = 70;
    }
    else 
    {
      Val = 20;
    }
  }
   
  void last_hit(boolean value) 
  {
    if (value) inOpac = 0;
    else inOpac = 200;
  }
   
  void check_state() 
  {
    if (state > 3) 
    {
      fill(255, 0, 0);
      ellipse(posX, posY, edge_width * 3, edge_width * 3);
      fill(255, 0, 0, 100);
      ellipse(posX, posY, edge_width * 7, edge_width * 7);
      state--;
    }
    else if (state > 0) 
    {
      fill(255, 0, 0);
      ellipse(posX, posY, edge_width * 2, edge_width * 2);
      fill(255, 0, 0, 100);
      ellipse(posX, posY, edge_width * 4, edge_width * 4);
      state--;
    }
  }   
}


HURDLE

class Hurdle 
{  
  int posX;
  int posY;
  int edge_width;
  int rad;   // radius
  int Red;
  int Blue;
  int state;
  int inOpac = 255;
   
  Hurdle(int x, int y, int w) 
  {
    posX = x;
    posY = y;
    edge_width = w;
    rad = edge_width/2;
    Red = 200;
    Blue = 100;
  }
   
  int getXpos() 
  {
    return posX;
  }
   
  int getYpos() 
  {
    return posY;
  }
   
  void display() 
  {
    fill(Red, 150, Blue, 100);
    ellipse(posX, posY, edge_width, edge_width);
    fill(Red, 100, Blue, inOpac);
    ellipse(posX, posY, rad, rad);
  }
   
  void hit() 
  {
    state = 5;
    int t = Red;
    Red = Blue;
    Blue = t;
  }
   
  void last_hit(boolean val) 
  {
    if (val) inOpac = 0;
    else inOpac = 255;
  }
   
  void check_state() 
  {
    if (state > 0) 
    {
      fill(Red, 0, Blue);
      ellipse(posX, posY, edge_width * 2, edge_width * 2);
      state--;
    }
  }
   
  int locate(int x, int y) 
  {
    if (y <= posY - rad) 
    {
      return UP;
    }
    else if (y >= posY + rad) 
    {
      return DOWN;
    }
    else if (x > posX + rad) 
    {
      return RIGHT;
    }
    else 
    {
      return LEFT;
    }
  }   
}


