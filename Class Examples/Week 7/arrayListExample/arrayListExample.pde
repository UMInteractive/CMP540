ArrayList<PVector> points;
ArrayList<Float> x;
ArrayList<Float> y;

//float x[];
//float y[];
int selectedIndex = 0;

void setup() {
  size(500, 500); 
  x = new ArrayList<Float>();
  y = new ArrayList<Float>();
  points = new ArrayList<PVector>();
}

void draw() {
  background(0);
  for (int i = 0; i < points.size (); i++) {
    PVector point = points.get(i);
    ellipse(point.x, point.y, 5, 5);
    //    float xPos = x.get(i);
//    float yPos = y.get(i);
//    ellipse(xPos, yPos, 5, 5);
  }
}

void mouseDragged() {
  PVector point = new PVector(mouseX, mouseY, -1);
  points.add(point);
//  x.add(float(mouseX));
//  y.add(float(mouseY));
  //   x[selectedIndex] = mouseX;
  //   y[selectedIndex] = mouseY;
  //  selectedIndex++; 
  //  if (selectedIndex >= x.length) {
  //   selectedIndex = 0; 
  //  }
}

void keyPressed() {
  /*if (x.size() > 1) {
    x.remove(x.size()-1);
    y.remove(y.size()-1);
  }*/
  
  if (points.size() > 0) {
     points.remove(points.size()-1); 
  }
}

