float angle = 0.0;
float offsetx1 = 250;
float offsety1 = 250;
float scalar1 = 100;
float scalar2 = 20;
float scalar3 = 50;
float speed = 0.05;

void setup()
{
  size(500, 500);
  smooth();
  noStroke();
}

void draw()
{
  fill(0, 0, 0, 3);
  rect(0, 0, width, height);
  float x = offsetx1 + cos(angle)*scalar1;
  float y = offsety1 + sin(angle)*scalar1;

  float x2 = offsetx1+50 - cos(angle)*scalar2;
  float y2 = offsety1 + sin(angle)*scalar2;

  float x3 = offsetx1-50+cos(angle)*scalar2;
  float y3 = offsety1-sin(angle)*scalar2;

  float x4 = offsetx1+50 + cos(angle)*scalar3;
  float y4 = offsety1 + sin(angle)*scalar3;


  fill(255, 255, 255);

  ellipse(x, y, 10, 10);
  ellipse(x2, y2, 10, 10);
  ellipse(x3, y3, 10, 10);

  if (y4>offsety1)
  {
    ellipse(x4, y4, 10, 10);
  }

  else
  {
    ellipse(offsetx1 - 50 - cos(angle)*scalar3, y4, 10, 10);
  }

  angle += speed;
  //speed += 0.0001;
}

