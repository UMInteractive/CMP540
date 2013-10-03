class Key
{
  color keyColor;
  int x;
  int keyWidth;
  int keyHeight;

  Key(int _x)
  {
    x = _x;
    keyWidth = 100;
    keyHeight = 200;
    keyColor = color(random(255), random(255), random(255));
  }

  void display()
  {
    fill(keyColor);
    rect(x, 200, keyWidth, keyHeight);
  }

//  void walk()
//  {
//    x++;
//  }
}

