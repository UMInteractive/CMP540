PImage roo;
int i;
int j;
int total = 600*400;
int next;
String s = "Click the mouse!";


void setup() {
  roo = loadImage("bonnaroo.jpg");
  size(600,400);
  image(roo,0,0);
  loadPixels();

}

void draw() {
  textSize(32);
  text(s,10,30);
  //hold down mouse to change color of image
  if (mousePressed) {
  colorImage();
  //Another test I did; randomly picks pixels and colors them red
    //pixels[next] ++;
    //next = int(random(total));
  
  updatePixels();
  }
}

void colorImage() {
  for (int i=0; i<total; i++){
     pixels[i] += 1; 
  }
}
