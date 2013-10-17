//Loop through an array
//stars

float x[] = new float [55];
float y[]= new float [55];
float speed;

void setup(){
  size(500, 500);
  smooth();
  frameRate(8);
  strokeJoin(ROUND);
  colorMode(HSB, 360, 100, 100);
  for(int i = 0; i < x.length; i ++){
    x[i] = random(20, 480);
    y[i] = random(20, 480);
  } 
}

void draw(){
  background(0);
  strokeWeight(4);
  color c = color(60, 100, 100);
  color b = color(0, 0, 0);
  color w = color(0, 0, 100);
  for(int i = 0; i < 20; i++){
  color change  = lerpColor(b, c, .05*i);
  stroke(change);
  }
  fill(w);
  for(int i = 0; i < x.length; i ++){
  star(x[i], y[i], random(5, 10), random(12, 15), 5);
  }
  
  con();
} 
  
void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float posx = x + cos(a+speed) * radius2;
    float posy = y + sin(a+speed) * radius2;
    vertex(posx, posy);
    posx = x + cos(a+halfAngle+speed) * radius1;
    posy = y + sin(a+halfAngle+speed) * radius1;
    vertex(posx, posy);
  }
  endShape(CLOSE);
  speed += 0.0025;
 }

