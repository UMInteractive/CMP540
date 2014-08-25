/*STurner-Smith Generative Art Mastery 1
 Based on work by Martin Zumaya Hernandez OpenProcessing - http://www.openprocessing.org/sketch/57188
 and M. Kontopoulos OpenProcessing - http://www.openprocessing.org/sketch/20146
 */

/*
I think this piece of generative art is beautiful as it creates a light weight scren of small and delicate pearls 
in front of very hard, industrial-like geometrical shapes that open and close. The design is based on some aspects 
of chaos theory which I've been reading about, but whilst my other versions where more chaotic still, I felt this 
one had a good balance that demonstrated some randomization yet resulted in a lovely light result that allowed the 
sharp edges and movement from the wall (background) to come through. 
*/



PGraphics buffer;

float s = 125, cx= s, cy=s, t=0, k = 1;
float r, i = 1;

//pearls part 1
    float xpearls=0.0;
    float ypearls=0.0;
    float angle = 0.0;
   float scaler;

//wall
void setup() {
  size(500, 500);
  smooth();

  buffer = createGraphics(width, height);
}

void draw() {

  r = s/k;
  background (50);
  stroke(255, 150);

  float x = 20*cos(radians(5*s));
  float y = 20*sin(radians(10*s));

  for (int i = 1; i < width; i += s) {
    for (int j = 1; j < height; j += s) {

      float ci = map(i, 1, width, 25, 25);
      float cj = map(j, 1, height, 25, 25);

      pushMatrix();
      translate(cx+2*i, cy+2*j);  

      fill(ci+50*sin(radians(t)), 200, 200, 100);

      beginShape();
      vertex(4*r, 0);
      vertex(s, s/r);
      vertex(s, -(r-1)*s/r);
      vertex(4*r, -s);
      vertex(4*r, 0);
      endShape();

      beginShape();
      vertex(-4*r, 0);
      vertex(-s, -s/r);
      vertex(-s, (r-1)*s/r);
      vertex(-4*r, s);
      vertex(-4*r, 0);
      endShape();

      fill(cj+20*cos(radians(t)), 200, 200, 100);

      beginShape();
      vertex(4*r, 0);
      vertex(-s*(xpearls*10), s/r);
      vertex(-s, -(r-1)*s/r);
      vertex(4*r, -s);
      vertex(4*r, 0);
      endShape(CLOSE);

      beginShape();
      vertex(-4*r, 0);
      vertex(s, -s/r);
      vertex(s, (r-1)*s/r);
      vertex(-4*r, s);
      vertex(-4*r, 0);
      endShape();

      popMatrix();
    }
  }

  t += 20;
  k += i*1;

  if ( k >= s || k <= -s) {
    i *= -1;
  }

//pearls part 2
    scaler = height/2;
    
     xpearls++;
    ypearls = height/2 + (sin(angle) * scaler);
    angle+=0.1;
    
    //purple
    buffer.beginDraw();
    buffer.fill (#192389);
    buffer.ellipse(xpearls*r/12, ypearls, 5, 5);
     buffer.endDraw();
    image(buffer,0,0);
        
    //blue
    buffer.fill (#209BA7);
    buffer.ellipse(xpearls*r/14, ypearls, 5, 5);
    
    
    buffer.endDraw();
    image(buffer,0,0);  
}
