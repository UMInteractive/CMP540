import ddf.minim.*;
import hypermedia.video.*;
import java.awt.Rectangle;
import java.awt.Point;


OpenCV opencv;
Minim minim;
Bar[] bars = new Bar[12];
int threshold = 80;
int captureWidth = 640;
int captureHeight = 480;

void setup() {
  size(displayWidth, displayHeight);
  opencv = new OpenCV( this );
  opencv.capture(captureWidth, captureHeight);
  opencv.cascade( OpenCV.CASCADE_FRONTALFACE_ALT );    
  minim = new Minim(this);
  for (int i = 0; i < 6; i++) {
    PVector tmpPosition = new PVector(i * displayWidth/6, 0);
    color tmpColor = color(random(100,200), random(100,255), random(50,100));
    AudioSample tmpAudio = minim.loadSample("note" + i + ".wav", 512);
    bars[i] = new Bar(tmpPosition, tmpColor, tmpAudio);
  }

  for (int i = 6; i < 12; i++) {
    PVector tmpPosition = new PVector((i-6) * displayWidth/6, displayHeight/2);
    color tmpColor = color(random(255), random(255), 0);
    AudioSample tmpAudio = minim.loadSample("note" + (i-6) + ".wav", 512);
    bars[i] = new Bar(tmpPosition, tmpColor, tmpAudio);
  }


}

void draw() {
  background(0);
  opencv.read();
  opencv.convert( GRAY );

  opencv.flip( OpenCV.FLIP_HORIZONTAL );
  //  opencv.absDiff();
  //  opencv.threshold(threshold);
  //  Blob[] blobs = opencv.blobs( 100, captureWidth*captureHeight/3, 20, true );
  Rectangle[] faces = opencv.detect( 1.2, 2, OpenCV.HAAR_DO_CANNY_PRUNING, 40, 40 );
  //blob detection instead of face.
  //  float blobX = -999;
  //  float blobY = -999; 
  /*  if (blobs.length > 0) {
   Rectangle bounding_rect  = blobs[0].rectangle;
   Point centroid = blobs[0].centroid;
   stroke(255);
   ellipse(centroid.x*(displayWidth/captureWidth), centroid.y*(displayHeight/captureHeight), 10, 10);
   blobX = centroid.x * (displayWidth/captureWidth);
   blobY = centroid.y * (displayHeight/captureHeight);
   }
   */
  for ( int i=0; i<faces.length; i++ ) {
    //debug face
    /*
    rect( faces[i].x * (displayWidth/captureWidth), faces[i].y * (displayWidth/captureHeight), faces[i].width, faces[i].height );
     image( opencv.image(), 0, 0 );
     rect( faces[i].x, faces[i].y, faces[i].width, faces[i].height );
     */
    for (int j = 0; j < bars.length; j++) {
      bars[j].display(); 

      if (bars[j].touchingMe(mouseX, mouseY)) {
        bars[j].play(mouseX, mouseY);
      }

/*
      if (bars[j].touchingMe(faces[i].x * (displayWidth/captureWidth), faces[i].y * (displayHeight/captureHeight))) {
        bars[j].play();
      }
*/
    }
  }
}

void keyPressed() {
  if ( key==' ' ) opencv.remember();
}

void mouseDragged() {
  threshold = int( map(mouseX, 0, width, 0, 255) );
}

public void stop() {
  opencv.stop();
  super.stop();
}

