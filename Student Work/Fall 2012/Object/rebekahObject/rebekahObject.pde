Blob myBlob;
float easing = 0.05;

void setup() {
  size (400, 400);
  noStroke();
  myBlob = new Blob();
}

void draw() {
  background(255);
  myBlob.display();
  myBlob.wiggle();
  myBlob.morph();

}

class Blob {
  float x;
  float y;
  float w;
  color c;

  Blob() {
    c=color(random(150), random(150), random(150));
    x=random(width);
    y=random(height);
    w=random(90);
  }

  void display() {
    fill(c);
    ellipse(x, y, w, w);
    ellipse(x+(w/2), y, w, w);
    ellipse(x, y+(w/2), w, w);
  }

  void wiggle() {
    if ((x>0)&&(x<width)) {
      x=(x+=random(-2, 2));
    }
    else {
      x=width/2;
    }
    if ((y>0)&&(y<width)) {
      y=(y+random(-2, 2));
    }
    else {
      y=height/2;
    }
  }
  void morph() {
    w=w+random(-2, 2);
  }

}

