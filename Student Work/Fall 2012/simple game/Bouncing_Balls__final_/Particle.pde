// The Nature of Code
// <http://www.shiffman.net/teaching/nature>
// Spring 2010
// PBox2D example

// A circular particle

class Particle {

  // We need to keep track of a Body and a radius
  Body body;
  float r;
  color col;
  boolean k;
  PImage img;

  Particle(float x, float y, float r_ ) {
    r = r_;
    // This function puts the particle in the Box2d world
    makeBody(x, y, r);
    body.setUserData(this);
    col = color(random(255), random(255), random(255));
    img = img1;
    k = true;
  }

  // This function removes the particle from the box2d world
  void killBody() {
    box2d.destroyBody(body);
  }

  // Change color when hit
  void change() {
    col = color(random(255), random(255), random(255));
  }



  void trigger1()
  {
    bouncing1.trigger();
  }

  void changeImage1()
  {
    img = img1;
  }

  void changeImage2()
  {
    img = img2;
  }

  void changeImage3()
  {
    img = img3;
  }

  void changeImage4()
  {
    img = img4;
  }

  void changeImage5()
  {
    img = img5;
  }
  // Is the particle ready for deletion?
  boolean done() {
    // Let's find the screen position of the particle
    Vec2 pos = box2d.getBodyPixelCoord(body);
    // Is it off the bottom of the screen?
    if (pos.y > height+r*2) {
      killBody();
      return true;
    }
    if (pos.y < 0) {
      killBody();
      return true;
    }    
    if (pos.x > width+r*2) {
      killBody();
      return true;
    }
    if (pos.x < 0) {
      killBody();
      return true;
    }
    
    if (k == false)
    {
      killBody();
      return true;
    }
    return false;
  }

  //score system
  boolean passing(int a, int b) {
    // Let's find the screen position of the particle
    Vec2 pos = box2d.getBodyPixelCoord(body);
    // Is it off the bottom of the screen?
    if (pos.x>=a && pos.x<=(a+150)) {
      if (pos.y <= b && pos.y>=(b-5))
      {
        return true;
      }
    }
    return false;
  }


  // 
  void display() {
    // We look at each body and get its screen position

    Vec2 pos = box2d.getBodyPixelCoord(body);
    // Get its angle of rotation
    float a = body.getAngle();
    pushMatrix();
    translate(pos.x, pos.y);
    //rotate(a);
    //    fill(255, 255, 255, random(100));
    //    ellipse(0, 0, r*3, r*3);
    fill(col, 200);
    noStroke();
    //strokeWeight(1);
    ellipse(0, 0, r*3, r*3);

    imageMode(CENTER);
    image(img, 0, 0, r*3, r*3);
    // Let's add a line so we can see the rotation
    //line(0, 0, r, 0);
    popMatrix();
  }

  // Here's our function that adds the particle to the Box2D world
  void makeBody(float x, float y, float r) {
    // Define a body
    BodyDef bd = new BodyDef();
    // Set its position'

    bd.position = box2d.coordPixelsToWorld(x, y);
    bd.type = BodyType.DYNAMIC;
    body = box2d.createBody(bd);

    // Make the body's shape a circle
    CircleShape cs = new CircleShape();
    cs.m_radius = box2d.scalarPixelsToWorld(r);

    FixtureDef fd = new FixtureDef();
    fd.shape = cs;
    // Parameters that affect physics
    fd.density = 1;
    fd.friction = 0.01;
    fd.restitution = 0.000003;

    // Attach fixture to body
    body.createFixture(fd);

    body.setAngularVelocity(random(-10, 10));
  }
}

