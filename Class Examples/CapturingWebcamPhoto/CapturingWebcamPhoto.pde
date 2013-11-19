var ctx;

final int cameraWidth = 960;
final int cameraHeight = 640;
PImage capturedPhoto;
boolean usingPhoto = false;

void setup() { 
  size(960, 640);
  ctx = externals.context;
}

void draw() { 
  background(0);
  if (!video.available) return;

  if (!usingPhoto) {   
    ctx.drawImage(video, 0, 0, cameraWidth, cameraHeight); //video is defined with video.js
  }
  else {
    image(capturedPhoto, 0, 0);
  }
}

void keyPressed () {
  capturedPhoto=get(0, 0, cameraWidth, cameraHeight);
  usingPhoto = !usingPhoto;
}

