PGraphics canvas;

void setup() {
  size(500, 500);
  canvas = createGraphics(width, height, JAVA2D);
  canvas.beginDraw();
  canvas.smooth();
  canvas.colorMode(HSB, 360, 100, 100);
  canvas.noStroke();
  canvas.endDraw();

 
}

void draw() {
  //background(255);
  image(canvas, 0, 0);
   if (keyPressed){
      if(key==' '){
        background(0);
      background (canvas);

      }
    }
 
}

void mousePressed() {
  splat(mouseX, mouseY);
}

void mouseDragged() {
  splat(mouseX, mouseY);
}
void mouseReleased (){
   //background (0);
  }
void splat(float x, float y) {
  int rad =27;
  //canvas.beginDraw();
fill(random(255),random (255),random(255));
  for (float i=3; i<29; i+=.35) {
    float angle = random(0, TWO_PI);
    float splatX = x + cos(angle)*2*i;
    float splatY = y + sin(angle)*3*i;
   ellipse(splatX, splatY, rad-i, rad-i+1.8);
    
   
  }
  //canvas.endDraw();
  
 
}

