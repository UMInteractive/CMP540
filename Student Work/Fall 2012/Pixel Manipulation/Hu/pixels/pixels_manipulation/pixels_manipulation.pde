//pixels manipulation
//press spacebar to see the change

PImage sun;
PImage change;

void setup(){
  size(400, 300);
  smooth();
  sun = loadImage("sunset.png");
  change = createImage(sun.width, sun.height, RGB);
}

void draw(){
  image(sun, 0, 0);
  if(keyPressed){
    if(key == ' '){
    float threshold = 110;
    
    sun.loadPixels();
    change.loadPixels();
    
    for(int x = 0; x < sun.width; x ++){
      for(int y = 0; y < sun.height; y ++){
        int loc = x + y * sun.width;
        
        if(brightness(sun.pixels[loc]) > threshold){
          change. pixels[loc] = color(random(255), random(255), random(255));
        } else {
          change.pixels [loc] = color(255);
        }
      }
    }
    change.updatePixels();
    image(change, 0, 0);
  }
 }
}
