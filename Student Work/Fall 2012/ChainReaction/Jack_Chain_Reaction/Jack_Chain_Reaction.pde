float ax = 100;
float ay = 50;
float bx = 180;
float by = 750;
float a = 0.5;
float a1 = 0.5;
float e1 = 1;
float e2 = 1;
color c1 = color( random(255), random(255), random(255));
color c2 = color( random(255), random(255), random(255));
color c3 = color( random(255), random(255), random(255));
color colorful; 


void setup() {
  size(800, 800);
  background(0);
  smooth();

  
}


void draw() {
  a = a * 1.05;
  a1 = 1.05 *a1;
  background(0);
  fill(c1);
  rect(0, 0, 50, 800);
  fill(c2);
  triangle(200, 800, 800, 200, 800, 800); 
  fill(c3);
  ellipse(ax, ay, 100, 100);
  ellipse(bx, by, 100, 100);
  if (key == ' ') {
    ay=ay+a;
    if (ay > 664) {
      by = by  - a1/2;
      bx = bx  + a1/2;
      if (by <= 300) {
        colorful = color (random(255), random(255), random(255));
        fill(colorful);
        ellipse(700, 300, e1, e1);
        e1= e1 + 100;
        if (e1 >= 1400) {
          fill(255);
          e2= e2+8;
          ellipse(400, 400, e2, e2);
          if (e2 >= 800) {
            println("Finish!!!");
            
          }
        }
      }
    }
  }
}

