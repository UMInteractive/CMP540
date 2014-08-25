PImage img;

void setup(){
  size (640, 427);
  img = loadImage ("pond.jpg");

}

void draw(){
   image(img,0,0);
   loadPixels();
   
  for (int i = 0; i<width*height; i++){
   color p = pixels[i];
   float r = red(p);
   float g = green(p);
   float b = blue(p);
   float bright = (mouseX-320)/4;
   float dark = (-(320-mouseX)/4);
   if (mouseX>320){
     pixels[i]=color(r+bright, g+bright, b+bright);
   }
   else{
     pixels[i]=color(r+dark, g+dark, b+dark);
  }
  }
  updatePixels(); 
  stroke(250);
  line(mouseX,0,mouseX, height);
}
