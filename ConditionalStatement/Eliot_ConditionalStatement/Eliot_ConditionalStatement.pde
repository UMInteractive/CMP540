//Eliot Allan Rodriguez
//Assignment 2 9/8/2013
//Conditional Statement


//Change the Boolean "showHidden" to see hidden drawing
Boolean showHidden = false;


//GLOBAL VARIABLES
int backColor = 0; //background Color State
color fromBlack = color(0, 0, 0);
color toRed = color(150, 0, 0);
float counter = 0;
int hideMe = 175;
int countMotion;


void setup()
{
  size(1000, 1000);
  background(0); 
}


void draw()
{
   countMotion = millis();
   
  //Conditional Statement: showHidden boolean being checked.
  if(showHidden)
  {
     counter = counter + .001;
       if (counter >= 1)
       {
       counter = 1;
       }
     println(counter);
     color lerpThis = lerpColor(fromBlack, toRed, counter);
     background(lerpThis);
  }
  
  
//hide % love
if(countMotion >= 18000)
{
   hideMe = hideMe - 1;

   if(hideMe <= 0)
   {
   hideMe = 0;
   }     
}
  
  //DRAWING
  
  //In Black
  fill(0);
  ellipse(500, 500, 200, 200); //central ellipse work
  rect(500, 400, 100, 100); // central ellipse work
  noStroke();
  rect(50, 50, 50, 900); //Black Rect Vertical
  rect(50, 900, 900, 50); // Black Rect Horizonal
  
 
  //behind me is a % i am going to disappear
  fill(0, 0, 0);
  ellipse(720, 300, hideMe, hideMe); 
  
  //% Love
  fill(0, 0, 0);
  ellipse(720 , 300, (countMotion % 100), (countMotion % 100));

//FIVE POINTS
 ellipse(270, 520, 40, 40); //1 highest point
 stroke(0);
 line(270, 520, 270, 390); //up line
 line(270, 520, 270, 900); //down line
 line(260, 520, 100, 520); //horizontal line
  noStroke();
ellipse(271, 390, 10, 10);//point
 fill(toRed);
 ellipse(270, 520, 35, 35);


 fill(fromBlack); // 2 next lowest point
 ellipse(300, 600, 50, 50);
 stroke(0);
 line(300, 600, 300, 500); //up line
 line(300, 600, 300, 900); //down line
 line(280, 600, 100, 600); //horizontal line
 noStroke();
 ellipse(301, 500, 11, 11); //point
 fill(toRed);
 ellipse(300, 600, 30, 30);
 
 fill(fromBlack); // 3 next lowest point
 ellipse(370, 670, 60, 60);
 stroke(0);
 line(370, 670, 370, 590); // up line
 line(370, 670, 370, 900); //down line
 line(350, 670, 100, 670); // horizontal line
 noStroke();
 ellipse(371, 590, 12, 12); //point

 fill(toRed);
 ellipse(370, 670, 25, 25);
 
 
 fill(fromBlack); // 4 next lowest point
 ellipse(470, 730, 70, 70); 
 stroke(0);
 line(470, 730, 470, 665); // up line 
 line(470, 730, 470, 900); // down line 
 line(450, 730, 100, 730); // horizontal line
 noStroke();
  ellipse(470, 665, 13, 13); //point

 fill(toRed);
 ellipse(470, 730, 20, 20);

 
 fill(fromBlack); // 5 lowest point
  ellipse(585, 750, 80, 80); 
  stroke(0);
  line(585, 750, 585, 695); // up line 
  line(585, 750, 585, 900); // down line 
  line(565, 750, 100, 750); // horizontal line
  noStroke();
  ellipse(586, 695, 14, 14); //point

 fill(toRed);
  ellipse(585, 750, 10, 10);

 
  //In Red
  
    //STARS
  stroke(toRed);
  point(560, 200); 
  strokeWeight(2);
  point(200, 700);
  strokeWeight(1);
  point(550, 800);
  point(640, 740);
  point(400, 630);
  point(330, 456);
  point(340, 640);
  strokeWeight(2);
  point(200, 517);
  strokeWeight(1);
  point(210, 650);
  point(220, 430);
  point(230, 478);
  point(240, 667);
  point(250, 710);
  point(260, 569);
  point(280, 640);
  point(290, 760);
  point(310, 820);
  point(310, 540);
  point(320, 680);
  point(330, 412);
  point(340, 640);
  point(350, 780);
  strokeWeight(2);
  point (360, 800);
  strokeWeight(1);
  point(370, 550);
  point(380, 720);
  point (405, 653);
  point(400, 690);
  point(410, 810);
  point(420, 740);
  point(430, 614);
  strokeWeight(3);
  point(440, 656);
  strokeWeight(1);
  point(650, 750);
  
  fill(150, 0, 0);
  noStroke();
  
  //Red Ellipse Diagonal to the center from highest to lowest
  ellipse(150, 150, 20, 20);
  ellipse(250, 250, 50, 50);
  ellipse(360, 350, 80, 80);
  ellipse(500, 500, 150, 150);
  
  noStroke(); 
  rect(900, 50, 50, 900);
  rect(100, 50, 850, 50);

}
