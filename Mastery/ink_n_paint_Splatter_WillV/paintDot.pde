class paintDot {
  float x, y, vx, vy, siz, prevx, prevy, slow, sizDec, life, vectorVar, vectorJay, vectorKay;
  int r, g, b;
  boolean dripping;
  paintDot (float moux, float mouy, float vJ, float vK, float vV) {
    r = (int)random(0, 10);
    g = (int)random(0, 5);
    b = (int)random(0, 5);
    vectorKay = vK;
    vectorVar = vV;
    vectorJay = vJ;
    slow = splatSlow;
    sizDec = splatSizDec;//random(0,splatSizDec);
    float offsetX = pow(random(0, maxOffset), 2);
    float offsetY = pow(random(0, maxOffset), 2);
    x = moux + random(-1, 1)*offsetX;
    y = mouy + random(-1, 1)*offsetY;
    vx = vectorJay + random(-1*vectorVar, vectorVar);
    vy = vectorKay + random(-0.75*vectorVar, vectorVar);
    siz = random(1, maxSiz);
  }

  void update() {
    vx *= slow;
    vy *= slow;
    if (dripping == false) {  
      vy += splatGrav;
    }
    prevx = x;
    prevy = y;
    x += vx;
    y += vy;
    siz = (siz * sizDec) + sizInc;
    if (dripping) {  
      siz -= (int)(sizInc);
    }
    //print("Dot at " + x + ", " + y + "\nvx = " + vx + "\nvy = " + vy + "\nsiz = " + siz);
  }

  void display() {
    stroke(r, g, b, 240);
    strokeWeight((int)siz);
    line(x, y, prevx, prevy);
  }

  boolean finished() {
    if (vx*vx + vy < minSpeed) {
      if (dripping == false) {
        dripping = true;
        slow = random(dripSlow, 1);
        sizDec = dripSizDec;
        vx = 0;
        vy = pow(random(0, 1.5), 2);
        return false;
      } else {
        return true;
      }
    } else {
      return false;
    }
  }
}


