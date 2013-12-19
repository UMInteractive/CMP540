
import ddf.minim.*;




import processing.serial.*;


Serial port;//
Minim minim;
AudioOutput out;

AudioPlayer player;

color bColor = color(255, 255, 255);
 
PImage ka;
//PImage ba;
//boolean aa=false;
int x;
int y;
int cellsize=2;
int cols; 
int rows;
String s;
int distance; 
color c;

boolean playing=false; 
boolean looping=false;

int bufferSize = 8;
float[] sonarValues = new float[bufferSize];
int sonarIndex =0;


void setup(){
  background(0);
  size (displayWidth,displayHeight,P3D);
  smooth ();
  port=new Serial (this,"/dev/tty.usbmodem1421",9600);
  port.bufferUntil('\n');
  ka=loadImage("red-flowers-background.jpg");
  //ba=loadImage("Flowers-107.jpg");
  cols=width/cellsize;
  rows=height/cellsize; 
 minim = new Minim(this);
  // load a file, give the AudioPlayer buffers that are 2048 samples long
  player = minim.loadFile("Beyoncé - Run The World (Girls).mp3", 2048);
  // play the file
  player.loop();
  out= minim.getLineOut();


 
 loadPixels();

  
  
  
  
}

void draw (){
  //background (0);
  if (distance>200)background(random(255), random(255), random(255));
  for (int k=0; k<cols;k++){
    for (int a=0; a<rows;a++){
      int x=k*cellsize+cellsize/2; 
      int y= a*cellsize+cellsize/2;
      int loc= x+y*width;
      color c=ka.pixels[loc];
      float t= (distance/(float)height)*brightness(ka.pixels[loc])-100.0;   
      pushMatrix();
      translate (x,y,t);
      fill(c);
      noStroke();
      rectMode(CENTER);
      rect (10,10,cellsize,cellsize);
      popMatrix();
 
    }
  }
  stroke(255);
  if (distance>800 && playing){
     player.pause();
     playing=false;
      //player.loop(); 
       
  }
  else if(distance<800 && !playing){
    player.play();
      //player.setGain(0);
     // player.loop();

    playing=true;
    //player.setVolume (0,1,2000);
  }
  if (out.hasControl(Controller.VOLUME)){
//  println(distance);
    float val=map(distance,0,width,1,0);
    float vol = map(distance, 0, 1, 0, 500);
    println("volume: " + vol);
//      println(val);
//    player.setVolume(val);

  
  //if (distance<100){
//    image(ba,displayWidth, displayHeight);
//    int loc= x+y*width;
//    color c=ba.pixels[loc];
//    float k= (distance/(float)height)*brightness(ba.pixels[loc])-100.0;   
//    pushMatrix();
//    translate (x,y,k);
//    fill(c);
//    noStroke();
//    rectMode(CENTER);
//    rect (10,10,cellsize,cellsize);
//    popMatrix();
//    aa=true; 
//  }
    
 }
 if (distance>700)background(random(255), random(255), random(255));
 
 
 
}
void serialEvent(Serial port) {
String s= port.readStringUntil('\n');
if(s != null) {
  s=trim(s);
 println(s);
    }
    int sv;
    sv = parseInt(s);
    sonarValues[sonarIndex] = sv;
    sv = (int) average(sonarValues);
    sonarIndex = (sonarIndex + 1) % bufferSize;
    //float vol = map(sv,0,300, 0, 1);
    //println("volume: " + vol);
     //   player.setVolume(vol);

    println("sv=" + sv);
distance = int(map(sv,0,300,0,height));
 if(distance<0){
 distance = 0;
 
 }
 println("distance=" + distance);
}

boolean sketchFullScreen (){
 return true;
}

void stop(){
  player.close();
  minim.stop();
  super.stop();
  out.close();
}

float average(float[] a) {
  float total = 0;
  for (int i = 0; i < a.length; i++) {
    total += a[i];
  } 
  return total / a.length;
  
}   


