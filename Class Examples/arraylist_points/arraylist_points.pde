ArrayList <Coordinate> points;


void setup() {
  size(500, 500); 
  //create an empty arraylist for points
  points = new ArrayList<Coordinate>();
}

void draw() {
  background(0);
   for (int i = 0; i < points.size(); i++) {
      Coordinate tmpPoint = points.get(i);
      ellipse(tmpPoint.x, tmpPoint.y, 10, 10);    
   } 
}

void mousePressed() {
  Coordinate newPoint = new Coordinate(mouseX, mouseY);
  points.add(newPoint);
}
