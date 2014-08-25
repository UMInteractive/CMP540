import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

Minim minim;
AudioInput in;
FFT fft;
float w;

void setup(){
  size (500,500);
  minim = new Minim(this);
  in = minim.getLineIn(Minim.STEREO, 512);
  fft = new FFT(in.bufferSize(), in.sampleRate());
  fft.logAverages(100,15);
  w = width/fft.avgSize();
  stroke(255,0,200);
  strokeWeight(w);
}
void draw(){
  background(0);
 fft.forward(in.mix);
 for(int i = 0; i < fft.avgSize(); i++){
 line((i*w)+(w*3), 0, (i*w)+(w*3), height - fft.getAvg(i) * 6);
 
 } 
}


