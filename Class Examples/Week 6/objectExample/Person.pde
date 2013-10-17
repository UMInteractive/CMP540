// name of class
class Person {
  //attributes
  String name;
  int age;
  color skin;
  float weight;
  float x;
  float y;

  //constructor
  Person(float _w, int _a) {
    skin = color(255, 255, 255);
    age = _a;
    weight = _w;
    name = "Clay";
    x = random(width);
    y = random(height);
  }

  //methods
  void display() {
    fill(skin);
    ellipse(x, y, weight, weight);
  }

  void loseWeight() {
    weight = weight - 1;
  }

  void gainWeight() {
    weight = weight + 1;
  }

  void findMorsel(Morsel m) {
    if (m.thickness == 0) {
      wander();
    }
    else {
      float targetX = m.x;
      float targetY = m.y;

      //figure out the distance between the current point and our
      //target point
      float d = dist(x, y, targetX, targetY);
      //if the distance is greater than 1, we ease in
      if (d > 1.0) {
        //our target coordinate minus where we are currently, multiplied
        //by the easing amount.
        //every time we it gives just a little bit more.  this is zeno's
        //paradox
        x += (targetX - x) * .05;
        y += (targetY - y) * .05;
      }
    }
  }

  boolean isEatingMorsel(Morsel m) {
    if (m.thickness != 0) {
      if (dist(x, y, m.x, m.y) <= weight/2) {
        gainWeight();
        return true;
      }
    }
    return false;
  }

  void wander() {
    x = x + random(-3, 3);
    y = y + random(-3, 3);
    if (x > width || x < 0) {
      x = width/2;
    }    
    if (y > height || y < 0) {
      y = height/2;
    }
  }
}

