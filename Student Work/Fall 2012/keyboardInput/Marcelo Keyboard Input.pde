int circle = 0;


void setup() {
size (800,800);
background(0,0,100);

}

void draw() {
   fill(circle);
   stroke(circle);
 ellipse (height/2, width/2, 300, 300);
 ellipse (height/3, width/3, 200, 200);
 ellipse (height/1.5, width/3, 200, 200); 
}

void keyPressed() {
  switch(key) {
    case 'c':
    {
   //fill(circle);
    //ellipse (height/3, width/3, 200, 200);
  }
    break;
  case 'q':
    if (circle == 0) {
    circle = 50;
  }
    break;
  case 'w':
    if (circle == 50) {
    circle = 100;
  }
    break;
  case 'e':
 if (circle == 100) {
    circle = 150;
  }
    break;
 case 'r':
 if (circle == 150) {
    circle = 200;
  }
  break;
  case 't':
 if (circle == 200) {
    circle = 255;
  }else {
   circle = 0;
  }



}

}
 
