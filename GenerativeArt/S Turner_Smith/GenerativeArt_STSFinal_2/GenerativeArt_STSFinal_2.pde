/*STurner-Smith Generative Art Mastery 1
 Based on work by Martin Zumaya Hernandez OpenProcessing - http://www.openprocessing.org/sketch/57188
 and M. Kontopoulos OpenProcessing - http://www.openprocessing.org/sketch/20146
 */

/*
I think this piece of generative art is beautiful as it creates a light weight screen of small and delicate "pearls" 
in front of very hard, industrial-like geometrical shapes that open and close in the background. 

The design is based on some aspects of the chaos theory. Whilst my other trial and error versions where more chaotic still, 
I felt this one had a good balance that demonstrated some randomization yet resulted in a lovely light and allowed the 
sharp edges and movement from "the wall" (background) to come through. 

My aim was creating Generative Art in which two animations interacted with each other in opposing ways. The size and shape of the wall could 
be seen as dangerous sharp-cornered industial machines. The pearls are light, small, round and delicate. Particularly the movement 
of the wall versus that of the pearls is very different too, yet they co-exist in the same space. 

More importantly, I had to hack two separate codes to enable this interaction. One animation displays a large block of moving small squares in light colours
with an HSB colourMode effect. The second was a simple black and white sine wave which moved upwards and downwards against a grey background, starting from the left hand 
side of the screen, moving towards the right and disappearing; and a second wave just moving up and down in the middle of the screen for no apparent reason. 

This was the most difficult part of the assignment with hours of research. Originally the sine wave did not leave visible tracks, and was located 
behind the wall layer. Getting both to work together and have the pearls leave a trail in front of the wall proved a lot of trial and error, fixed
mostly with the PGraphics code. I also integrated some variables from each code into the other to manipulate movement and position. Some surprising results in 
the interaction included in multiplying the wall's "r" into the pearl code in xpearls*r/12 and xpearls*r/14; and multiplying the xpearls*10 into the wall code under 
vertex(-s*(xpearls*10), s/r). The former created an amazing movement of spitting pearls that leave the screen and then return in an unexpected way. This in my view brings 
out the unexpected result in Generative Art work versus the simple sine wave expected motion. 
Later some of this code with regards to layering would become useful in creating my final project. 
*/


//Part of the code added to create interaction between two screens. Specifically allows 2 animations to play concurrently and in an interactive way
PGraphics buffer;

//Code manipulated from http://www.openprocessing.org/sketch/57188, next two code lines
//s modified to change appearance of wall - widens squares. Removed the colorMode(HSB)to neutralise (calm down) the screen from flashing tones. 
float s = 125, cx= s, cy=s, t=0, k = 1;
float r, i = 1;

//pearls part 1
//code used from http://www.openprocessing.org/sketch/20146
    float xpearls=0.0;
    float ypearls=0.0;
    float angle = 0.0;
   float scaler;

//wall
void setup() {
  size(500, 500);
  smooth();

//Part of PGraphics added to the code to create interaction between two screens
  buffer = createGraphics(width, height);
}

void draw() {

  //code manipulated from http://www.openprocessing.org/sketch/57188
  //background at 50 darkens the backdrop of the wall
  r = s/k;
  background (50);
  stroke(255, 150);

  float x = 20*cos(radians(5*s));
  float y = 20*sin(radians(10*s));

  for (int i = 1; i < width; i += s) {
    for (int j = 1; j < height; j += s) {

      //Manipulated for change in colours
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
      
      //The "wall" code is manipulated here with the a "pearls" code variable xpearl x 10, to create a more mechanical looking visual of the wall (up and down frames)
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
//code used in next 4 lines from http://www.openprocessing.org/sketch/20146; thereafter manipulated
    scaler = height/2;
    
     xpearls++;
    ypearls = height/2 + (sin(angle) * scaler);
    //Changes angle of the movement of the pearl trail. Played with this for a while.
    angle+=0.1;
    
    //2 sets of coloured ellipses, manipulated with the wall code variables
    //part 2 PGraphics buffer code
    
    //purple
    buffer.beginDraw();
    buffer.fill (#192389);
    
    //Code manipulated with *r/12 directly from the wall to affect the movement of the ellipses to sprial outwards, then reduce size of ellipses and position
    //This created an amazing effect, of spitting pearls that leave the screen and then come back versus the expected simple sive wave motion!
    buffer.ellipse(xpearls*r/12, ypearls, 5, 5);
     buffer.endDraw();
    image(buffer,0,0);
        
    //blue
    buffer.fill (#209BA7);
    
    //Code manipulated with *r/14 directly from the wall to affect the movement of the ellipses to sprial outwards, then reduce size of ellipses and position
    //Displays the same results as above but with a small distance so we can see the two sets of ellipses.
    buffer.ellipse(xpearls*r/14, ypearls, 5, 5);
    
    
    buffer.endDraw();
    image(buffer,0,0);  
}
