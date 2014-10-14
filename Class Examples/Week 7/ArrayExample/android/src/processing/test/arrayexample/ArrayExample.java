package processing.test.arrayexample;

import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class ArrayExample extends PApplet {
  public void setup() {
/**
 * Array. 
 * 
 * An array is a list of data. Each piece of data in an array 
 * is identified by an index number representing its position in 
 * the array. Arrays are zero based, which means that the first 
 * element in the array is [0], the second element is [1], and so on. 
 * In this example, an array named "coswav" is crandroideated and
 * filled with the cosine values. This data is displayed three 
 * separate ways on the screen.  
 */


float[] coswave = new float[width];

for (int i = 0; i < width; i++) {
  float amount = map(i, 0, width, 0, PI);
  coswave[i] = abs(cos(amount));
}

for (int i = 0; i < width; i++) {
  stroke(coswave[i]*255);
  line(i, 0, i, height/3);
}

for (int i = 0; i < width; i++) {
  stroke(coswave[i]*255 / 4);
  line(i, height/3, i, height/3*2);
}

for (int i = 0; i < width; i++) {
  stroke(255 - coswave[i]*255);
  line(i, height/3*2, i, height);
}
noLoop();
  }

  public int sketchWidth() { return 200; }
  public int sketchHeight() { return 200; }
}
