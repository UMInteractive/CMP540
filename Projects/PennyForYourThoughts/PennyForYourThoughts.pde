import hypermedia.video.*;
import java.awt.Rectangle;
import java.awt.Point;

OpenCV opencv;
//Bubble myBubble;
ArrayList<Bubble> bubbles;
int numberOfFaces = 0;
String[] thoughts = new String[5];

void setup() {
  thoughts[0] = "Hello";
  thoughts[1] = "Goodbye";
  thoughts[2] = "Nice to meet you";
  thoughts[3] = "STFU";
  thoughts[4] = "Run!!!";
  
  size( 320, 240 );
  PVector pos = new PVector();
  pos.x = width/2;
  pos.y = height/2;
  bubbles = new ArrayList<Bubble>(); //empty
  //    myBubble = new Bubble(pos, 1);
  opencv = new OpenCV( this );
  opencv.capture( width, height );                   // open video stream
  opencv.cascade( OpenCV.CASCADE_FRONTALFACE_ALT );  // load detection description, here-> front face detection : "haarcascade_frontalface_alt.xml"
}


public void stop() {
  opencv.stop();
  super.stop();
}



void draw() {

  // grab a new frame
  // and convert to gray
  opencv.read();

  // proceed detection
  Rectangle[] faces = opencv.detect( 1.2, 2, OpenCV.HAAR_DO_CANNY_PRUNING, 40, 40 );

  // display the image
  image( opencv.image(), 0, 0 );

  // draw face area(s)
  //    noFill();
  stroke(255, 0, 0);
  if (faces.length < numberOfFaces) {
    bubbles.clear();
  }
  if (faces.length > numberOfFaces) {
    for ( int i=numberOfFaces; i<faces.length; i++ ) {
      PVector pos = new PVector();
      pos.x = faces[i].x;
      pos.y = faces[i].y;
      int thoughtNumber = int(random(0, thoughts.length));
      Bubble tmpBubble = new Bubble(pos, faces[i].width / faces[i].height, thoughts[thoughtNumber]);
      bubbles.add(tmpBubble);
    }
  }
  numberOfFaces = faces.length;

  for (int i = 0; i < faces.length; i++) {
    if (bubbles.size() == faces.length) {
      Bubble bubble = bubbles.get(i);
      PVector pos = new PVector();
      pos.x = faces[i].x;
      pos.y = faces[i].y;
      bubble.scale = faces[i].width/faces[i].height;
      bubble.nextPosition = pos;
      
    }
  }

  for (int i = bubbles.size()-1; i >= 0; i--) {
    Bubble bubble = bubbles.get(i);
    bubble.display();
    if (bubble.timeLeft <= 0) {
       bubbles.remove(i); 
       numberOfFaces--;
    }
    
  }
}

