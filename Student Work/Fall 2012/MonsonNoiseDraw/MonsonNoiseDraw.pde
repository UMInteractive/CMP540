import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

Minim minim;
AudioInput input;
FFT fft;
float w;
float xPos;
float yPos;
float freq;

void setup() {
  size (500, 500);
  background(0);
  minim = new Minim(this);
  input = minim.getLineIn(Minim.STEREO, 512);
  fft = new FFT(input.bufferSize(), input.sampleRate());
}
void draw() {
  fft.forward(input.mix);
  //  xPos= width/2;
  xPos= fft.getBand(4)*100;
  w = (input.left.level())*500;

  for (int i = 0; i < 5000; i++) {
    freq = fft.getFreq(i);
    yPos= freq*500;
  }

  println(yPos);
  fill(255, 0, 200);
  noStroke();
  ellipse(xPos, yPos, w, w);
  if (keyPressed == true){
    background(0);
  }
}

void stop() {
  //close those minim audio classes, yo
  input.close();
  minim.stop();
  super.stop();
} 

