int x = 300;
int y = 300;
int m = 0;
float xPosition = random(0,500);
float yPosition = random(0,500);
float xPosition2 = random(0,500);
float yPosition2 = random(0,500);
float xDirection  = random(3, 8);
float yDirection = random(3, 8);
float xDirection2  = random(3, 8);
float yDirection2 = random(3, 8);
PFont font;

void setup() {
  size(500, 500);
  smooth();
}

void draw() {
  background(255);
  font =loadFont("ARCENA-48.vlw");
  textFont(font);
  textSize(45);
  text("DO NOT GET HIT!", 20,50);  
  textSize(30);
  text("Use 'UP','DOWN','LEFT','RIGHT'", 20,100);
  
  fill(8, 232, 255);
  ellipseMode(CENTER);
  noStroke();
  ellipse(x, y, 50, 50);
  fill(0);
  ellipse(xPosition, yPosition, 50, 50);
  ellipse(xPosition2, yPosition2, 50, 50);

  CollisionDetect();

  xPosition = xPosition + xDirection;
  yPosition = yPosition + yDirection;

  xPosition2 = xPosition2 + xDirection2;
  yPosition2 = yPosition2 + yDirection2;
  if (xPosition < 25) {
    xPosition =25;
    xDirection *= -1;
  }
  else if (xPosition > width-25)
  {
    xPosition = width-25;
    xDirection *= -1;
  }

  else if (yPosition < 25)
  {
    yPosition =25;
    yDirection *= -1;
  }

  else if (yPosition > height-25)
  {
    yPosition=height-25;
    yDirection *= -1;
  }
  else if (xPosition2 < 25) {
    xPosition2 =25;
    xDirection2 *= -1;
  }
  else if (xPosition2 > width-25)
  {
    xPosition2 = width-25;
    xDirection2 *= -1;
  }
  else if (yPosition2 < 25)
  {
    yPosition2 =25;
    yDirection2 *= -1;
  }
  else if (yPosition2 > height-25)
  {
    yPosition2=height-25;
    yDirection2 *= -1;
  }
}

void keyPressed()
{
  if (key == CODED)
  {
    if (keyCode == RIGHT&&x<=width-25)
    {
      x+=15;
    }

    else if (keyCode == LEFT&&x>=25)
    {
      x-=15;
    }  

    else if (keyCode == UP&&y>=25)
    {
      y-=15;
    }  

    else if (keyCode == DOWN&&y<=height-25)
    {
      y+=15;
    }
  }
}

void CollisionDetect()
{
  float a1 = ((yPosition-y)*(yPosition-y))+((xPosition-x)*(xPosition-x));
  float a2 = ((yPosition2-y)*(yPosition2-y))+((xPosition2-x)*(xPosition2-x));
  if (a1<=2500 || a2<=2500)
  {
    println("You've been hit!!!!"+m);
    background(0);
    fill(255);
    ellipse(x, y, 50, 50);
    ellipse(xPosition, yPosition, 50, 50);
    ellipse(xPosition2, yPosition2, 50, 50);
    m+=1;
  }
}

