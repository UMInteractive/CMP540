PImage myImage;

void setup() {
  myImage = loadImage("dogs.jpg");
  size(myImage.width/2, myImage.height/2);

}

void draw() {
  image(myImage, 0, 0, myImage.width/2, myImage.height/2);
}
