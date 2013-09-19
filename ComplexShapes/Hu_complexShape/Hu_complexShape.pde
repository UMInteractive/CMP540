/*complexShape
doraemon*/

PFont name;

void setup(){
  size(400, 400);
  smooth();
}

void draw(){
  background(60);
  name = loadFont("RosewoodStd-Regular-48.vlw");
  fill(#ffff00);
  textFont(name);
  text("Doraemon", 90, 350);

  //draw the body
  fill(#00ccff);
  noStroke();
  ellipse(width/2, height/2-40, 260, 260);
  
  //draw the neck
  stroke(#ff0000);
  strokeCap(ROUND);
  strokeWeight(8);
  line(79, 200, 320, 200);
  
  //draw the face
  fill(#ffffff);
  noStroke();
  arc(width/2, height/2-32, 200, 180, PI-PI/10, PI*2+PI/10, CHORD);
  
  //draw the belly
  fill(#ffffff);
  noStroke();
  arc(width/2, height/2+5, 140, 150, 0, PI);
  
  //draw the eyes
  fill(#ffffff);
  stroke(0);
  strokeWeight(1.3);
  
  pushMatrix();
  translate(100, 20);
  rotate(PI/9);
  ellipse(95, 38, 40, 50);
  popMatrix();
  
  pushMatrix();
  translate(200, 20);
  rotate(PI/1.2);
  ellipse(18, -68, 40, 50);
  popMatrix();
  
  fill(0);
  noStroke();
  ellipse(width/2-15, height/2-110, 15, 20);
  ellipse(width/2+10, height/2-110, 15, 20);
  
  fill(255);
  noStroke();
  ellipse(width/2-15, height/2-112, 5, 6);
  ellipse(width/2+10, height/2-112, 5, 6);

  //draw the nose
  stroke(0);
  strokeWeight(1.5);
  line(width/2-2, height/2-85, width/2-2, height/2-5);
  
  fill(#ff0000);
  stroke(0);
  strokeWeight(1.2);
  ellipse(width/2-2, height/2-85, 25, 25);
  
  fill(#ffffff);
  noStroke();
  ellipse(width/2-5, height/2-90, 8, 8);
  
  //draw the whisker
  stroke(0);
  strokeWeight(1.5);
  line(width/2-35, height/2-70, 120, height/2-85);
  line(width/2-35, height/2-60, 105, height/2-65);
  line(width/2-35, height/2-50, 100, height/2-35);
  line(width/2+35, height/2-70, 280, height/2-85);
  line(width/2+35, height/2-60, 292, height/2-65);
  line(width/2+35, height/2-50, 298, height/2-35);
  
  //draw the bell
  stroke(0);
  strokeWeight(1.2);
  fill(#ffff00);
  ellipse(width/2-2, 213, 25, 25);
  line(187, 210, 209, 210);
  
  fill(0);
  ellipse(width/2-2, 215, 5, 5);
  line(198, 215, 198, 225);
  
  //draw the pocket
  stroke(0);
  fill(#ffffff);
  arc(198, 240, 100, 50, 0, PI, CHORD);
  

  
}

  

