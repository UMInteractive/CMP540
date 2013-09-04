
//Eliot Rodriguez
// Assignment 1 9/4/2013
// Complex Shape

//Draw function not used (smooth() not working in this function


void setup()
{
  //CANVAS SETUP
  size(1000, 1000);
  background(0);
  smooth();

  
  //BOTTOM ELLIPSE
  ellipse(500, 800, 100, 100);
  noFill();
  stroke(255);
  arc(500, 820, 140, 110, 0, PI);
  
  //TOP ELLIPSE
  fill(255);
  ellipse(500, 200, 100, 100);
  noFill();
  stroke(255);
  arc(500, 180, 140, 110, PI, TWO_PI);
 
 //LEFT LEFT
  fill(255);
  ellipse(200, 500, 100, 100);
  noFill();
  stroke(255);
  strokeWeight(2);
  ellipse(200, 500, 120, 120);

  //RIGHT
  fill(255);
  ellipse(800, 500, 100, 100);
  noFill();
  stroke(255);
  strokeWeight(2);
  ellipse(800, 500, 120, 120);
  
    //CENTER
  noFill();
  stroke(255);
  ellipse(500, 500, 100, 100);

  ellipse(700, 500, 30, 30);

//BOX PATTERN
  fill(255, 255, 255, 10);
  noStroke();
    rect(450, 700, 200, 200);
    rect(600, 800, 200, 150);
    rect(800, 600, 200, 150);
    rect(700, 850, 100, 150);
    rect(900, 900, 100, 100);
    rect(950, 950, 50, 50);
    rect(700, 740, 200, 200);
    rect(700, 740, 100, 40);
    rect(860, 830, 100, 200);

//STARS
stroke(255);
point(420, 500);
point(520, 650);
point(620, 400);
point(530, 400);
point(410, 520);
point(430, 510);
point(640, 430);
point(450, 570);
point(300, 350);
point(430, 480);
strokeWeight(5);
point(600, 400);
strokeWeight(1);
point(570, 300);
point(530, 420);


//LEFT CORNER
fill(255);
triangle(0, 680, 0, 999, 280, 999);
noFill();
triangle(0, 700, 0, 999, 300, 999);
fill(0);
triangle(0, 680, 0, 999, 250, 999); 
fill(255);
triangle(0, 680, 0, 999, 150, 999); 
noFill();
triangle(0, 680, 0, 999, 100, 999);

}



