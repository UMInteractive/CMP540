float []purple;
class Boom {
  float px, py, vx, vy;
  int r;
  boolean x;
  color c;
  Boom(float _px, float _py, boolean _x) {
    px = _px;
    py = _py;
    x = _x;
    r = !x?10:0;
    vx = random(-2, 2);
    vy = random(-2, 2);
    c = color( random(255), random(255), random(255) );
  }
  void simulate() {
    if ( x ) {
      if ( r != -1 ) {
        r++;
      }
    } 
    else { 
      px=(px+vx+width)%width;
      py=(py+vy+height)%height;
    }
  }
  void render() {
    if ( x ) {
      if ( r != -1 ) {
        fill(c);
        noStroke();
        if ( r < 40 ) {
          ellipse(px, py, r, r);
        } 
        else if ( r < 80 ) {
          ellipse(px, py, 80-r, 80-r);
        } 
        else { 
          r = -1;
        }
      }
    } 
    else {
      fill(c);
      noStroke();
      ellipse( px, py, r, r );
    }
  }
  int trueR() {
    if ( r < 40 ) {
      return r;
    } 
    else if ( r < 80 ) {
      return 80 - r;
    } 
    else { 
      return 0;
    }
  }
}

ArrayList booms;
void setup() {
size(600, 500);
  ellipseMode(RADIUS);
purple= new float[width];
for (int i = 0; i < purple.length; i++) {
purple[i] = random(0, 255);
booms = new ArrayList();
  for ( int t = 0; t < 20; t++ ) {
    booms.add( new Boom( random(width), random(height), false ) );
  }
}
}
void draw() {
for (int i = 0; i < purple.length; i++) {
stroke(purple[i]);
line(i, 0, i, height);
for ( int t = 0; t < booms.size(); t++ ) {
    Boom temp = (Boom) booms.get(t);
    temp.simulate();
    temp.render();
    for ( int j = 0; j < booms.size(); j++ ) {
      Boom check = (Boom) booms.get(j);
      if ( t != j && check.x && check.r != -1 && dist( check.px, check.py, temp.px, temp.py) < .5 * (check.trueR()+temp.trueR()) ) {
        temp.x = true;
        j = booms.size();
      }
      }
    }
  }
}

void mousePressed() {
  booms.add( new Boom( mouseX, mouseY, true ) );
}



