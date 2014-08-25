
size(1600, 1002);
smooth();
background(0, 0, 0);

noFill();
for (int i=2;i<=230;i+=1)        //background ellipse2
{
  stroke(190-i, 255-i, 0);
  ellipse(802, 625, 195+i, 387+i);
}

beginShape();
endShape();

noFill();
stroke(69, 69, 67);                //shadow begins
strokeWeight(10);
strokeCap(SQUARE);
line(614, 668, 492, 801);          //shadow on the left side
line(551, 805, 321, 1004);
line(402, 825, 443, 825);
line(454, 676, 510, 676);

line(474, 212, 608, 360);              
line(383, 48, 519, 212);
line(557, 226, 608, 226);

line(801*2-614, 668, 801*2-492, 801);     //shadow on the right side
line(801*2-551, 805, 801*2-321, 1004);
line(801*2-402, 825, 801*2-443, 825);
line(801*2-454, 676, 801*2-510, 676);

line(801*2-474, 212, 801*2-608, 360);
line(801*2-383, 48, 801*2-519, 212);
line(801*2-557, 226, 801*2-608, 226);


strokeWeight(1);
noStroke();
fill(211, 177, 0);            //lightning begins
beginShape();                  //lightning on the left side
vertex(615, 487);
vertex(614, 668);
vertex(492, 801);
vertex(551, 801);
vertex(321, 1004);
vertex(443, 825);
vertex(402, 825);
vertex(510, 676);
vertex(454, 676);
endShape(CLOSE);

beginShape();
vertex(603, 356);
vertex(474, 212);
vertex(519, 212);
vertex(383, 48);
vertex(608, 226);
vertex(557, 226);
vertex(697, 356);
endShape();

beginShape();                //lightning on the right side
vertex(801*2-615, 487);
vertex(801*2-614, 668);
vertex(801*2-492, 801);
vertex(801*2-551, 801);
vertex(801*2-321, 1004);
vertex(801*2-443, 825);
vertex(801*2-402, 825);
vertex(801*2-510, 676);
vertex(801*2-454, 676);
endShape(CLOSE);

beginShape();
vertex(801*2-603, 356);
vertex(801*2-474, 212);
vertex(801*2-519, 212);
vertex(801*2-383, 48);
vertex(801*2-608, 226);
vertex(801*2-557, 226);
vertex(801*2-697, 356);
endShape();


noFill();
strokeCap(ROUND);
for (int m=0;m<=17;m+=1)              //filling1 starts
{

  for (int i=1;i<=262;i+=1)
  {
    stroke(157-i/2, 77-i/2, 11-i/2);
    point(615+m, 356+i);
  }
}                                    //filling1 ends

for (int m=0;m<=67;m+=1)              //filling2 starts
{

  for (int i=1;i<=65;i+=1)
  {
    stroke(157-i/2, 77-i/2, 11-i/2);
    point(630+m, 356+i);
  }
}                                    //filling2 ends

for (int m=0;m<=29;m+=1)              //filling3 starts
{

  for (int i=1;i<=28;i+=1)
  {
    stroke(164-i/2, 91-i/2, 25-i/2);
    point(666+m, 328+i);
  }
}                                    //filling3 ends

for (int m=0;m<=844-697-62;m+=1)              //filling4 starts
{

  for (int i=1;i<=160;i+=1)
  {
    stroke(157-i, 77-i, 11-i);
    point(697+62+m, 356+i);
  }
}                                    //filling4 ends

for (int m=0;m<=208;m+=1)              //filling5 starts
{

  for (int i=1;i<=50;i+=1)
  {
    stroke(175-i/2, 102-i/2, 36-i/2);
    point(695+m, 306+i);
  }
}                                    //filling5 ends


for (int m=0;m<=29;m+=1)              //filling6 starts
{

  for (int i=1;i<=28;i+=1)
  {
    stroke(164-i/2, 91-i/2, 25-i/2);
    point(842+62+m, 328+i);
  }
}                                    //filling6 ends

for (int m=0;m<=72;m+=1)              //filling7 starts
{

  for (int i=1;i<=58;i+=1)
  {
    stroke(157-i/2, 77-i/2, 11-i/2);
    point(853+62+m, 356+i);
  }
}                                    //filling7 ends

for (int m=0;m<=17;m+=1)              //filling8 starts
{

  for (int i=1;i<=262;i+=1)
  {
    stroke(157-i/2, 77-i/2, 11-i/2);
    point(852+119+m, 356+i);
  }
}                                    //filling8 ends



for (int m=0;m<=374;m+=1)              //filling5 starts
{

  for (int i=1;i<=23;i+=1)
  {
    stroke(35, 10, 0);
    point(614+m, 356+245+i);
  }
}                                    //filling5 ends


for (int i=0;i<=8;i+=1)
{
  //fill(255);
  beginShape();                                //Frame Starts
  stroke(189-10*i, 184-10*i, 182-10*i);
  vertex(666-i, 356-i);
  vertex(666-i, 328-i);
  vertex(695-i, 306+22-i);
  vertex(695-i, 306-i);
  vertex(695+208+i, 306-i);
  vertex(695+208+i, 306+22-i);
  vertex(666+265+i, 328-i);
  vertex(666+265+i, 328+28-i);
  vertex(614+374+i, 356-i);
  vertex(614+374+i, 356+250+i);
  vertex(961+i, 625+i);
  vertex(640-i, 625+i);
  vertex(614-i, 356+250+i);
  vertex(614-i, 356-i);
  endShape(CLOSE);                             //Frame Ends
}

for (int i=0;i<=8;i+=1)                           //left-handed upper silver frame starts
{
  beginShape();
  stroke(139-10*i, 134-10*i, 132-10*i);
  vertex(697-i, 356-i);
  vertex(697+62+i, 356-i);
  vertex(640+119+i, 421+172+i);
  vertex(640-i, 421+172+i);
  vertex(640-i, 421-i);
  vertex(640+119-62-i, 421-i);
  endShape(CLOSE);                                //left-handed upper silver frame ends
}

for (int i=0;i<=8;i+=1)                           //right-handed upper silver frame starts
{
  beginShape();
  stroke(139-10*i, 134-10*i, 132-10*i);
  vertex(844-i, 356-i);
  vertex(844+62+i, 356-i);
  vertex(844+62+i, 356+65-i);
  vertex(844+119+i, 421-i);
  vertex(844+119+i, 421+172+i);
  vertex(844-i, 421+172+i);
  endShape(CLOSE);      //right-handed upper silver frame ends! Stage 1 Completed!
}

translate(697*2+208, 319*2+616);      //stage 2 starts!
rotate(radians(180));

for (int m=0;m<=17;m+=1)              //filling1 starts
{

  for (int i=1;i<=262;i+=1)
  {
    stroke(157-i/2, 77-i/2, 11-i/2);
    point(615+m, 356+i);
  }
}                                    //filling1 ends

for (int m=0;m<=67;m+=1)              //filling2 starts
{

  for (int i=1;i<=65;i+=1)
  {
    stroke(157-i/2, 77-i/2, 11-i/2);
    point(630+m, 356+i);
  }
}                                    //filling2 ends

for (int m=0;m<=29;m+=1)              //filling3 starts
{

  for (int i=1;i<=28;i+=1)
  {
    stroke(164-i/2, 91-i/2, 25-i/2);
    point(666+m, 328+i);
  }
}                                    //filling3 ends

for (int m=0;m<=844-697-62;m+=1)              //filling4 starts
{

  for (int i=1;i<=160;i+=1)
  {
    stroke(157-i, 77-i, 11-i);
    point(697+62+m, 356+i);
  }
}                                    //filling4 ends

for (int m=0;m<=208;m+=1)              //filling5 starts
{

  for (int i=1;i<=50;i+=1)
  {
    stroke(175-i/2, 102-i/2, 36-i/2);
    point(695+m, 306+i);
  }
}                                    //filling5 ends


for (int m=0;m<=29;m+=1)              //filling6 starts
{

  for (int i=1;i<=28;i+=1)
  {
    stroke(164-i/2, 91-i/2, 25-i/2);
    point(842+62+m, 328+i);
  }
}                                    //filling6 ends

for (int m=0;m<=72;m+=1)              //filling7 starts
{

  for (int i=1;i<=58;i+=1)
  {
    stroke(157-i/2, 77-i/2, 11-i/2);
    point(853+62+m, 356+i);
  }
}                                    //filling7 ends

for (int m=0;m<=17;m+=1)              //filling8 starts
{

  for (int i=1;i<=262;i+=1)
  {
    stroke(157-i/2, 77-i/2, 11-i/2);
    point(852+119+m, 356+i);
  }
}                                    //filling8 ends



for (int m=0;m<=374;m+=1)              //filling5 starts
{

  for (int i=1;i<=23;i+=1)
  {
    stroke(35, 10, 0);
    point(614+m, 356+245+i);
  }
}                                    //filling5 ends


for (int i=0;i<=8;i+=1)
{
  //fill(255);
  beginShape();                                //Frame Starts
  stroke(189-10*i, 184-10*i, 182-10*i);
  vertex(666-i, 356-i);
  vertex(666-i, 328-i);
  vertex(695-i, 306+22-i);
  vertex(695-i, 306-i);
  vertex(695+208+i, 306-i);
  vertex(695+208+i, 306+22-i);
  vertex(666+265+i, 328-i);
  vertex(666+265+i, 328+28-i);
  vertex(614+374+i, 356-i);
  vertex(614+374+i, 356+250+i);
  vertex(961+i, 625+i);
  vertex(640-i, 625+i);
  vertex(614-i, 356+250+i);
  vertex(614-i, 356-i);
  endShape(CLOSE);                             //Frame Ends
}

for (int i=0;i<=8;i+=1)                           //left-handed upper silver frame starts
{
  beginShape();
  stroke(139-10*i, 134-10*i, 132-10*i);
  vertex(697-i, 356-i);
  vertex(697+62+i, 356-i);
  vertex(640+119+i, 421+172+i);
  vertex(640-i, 421+172+i);
  vertex(640-i, 421-i);
  vertex(640+119-62-i, 421-i);
  endShape(CLOSE);                                //left-handed upper silver frame ends
}

for (int i=0;i<=8;i+=1)                           //right-handed upper silver frame starts
{
  beginShape();
  stroke(139-10*i, 134-10*i, 132-10*i);
  vertex(844-i, 356-i);
  vertex(844+62+i, 356-i);
  vertex(844+62+i, 356+65-i);
  vertex(844+119+i, 421-i);
  vertex(844+119+i, 421+172+i);
  vertex(844-i, 421+172+i);
  endShape(CLOSE);      //right-handed upper silver frame ends! Stage 2 Completed!
}

translate(697*2+208, 319*2+616);          //rotate all the frames back to original
rotate(radians(180));




fill(255);
ellipse(802, 625, 237, 389);           //topper ellipse


noFill();
stroke(0);
strokeWeight(2);
arc(795, 660, 230, 230, radians(200), radians(320));
arc(919, 567, 80, 80, radians(90), radians(150));        //ONE eye
arc(690, 670, 80, 80, radians(270), radians(310));
arc(804, 554, 245, 245, radians(30), radians(135));

for (int i=0;i<=120;i+=1)
{
  stroke(255-255/120*i, 2, 2);                        //eyeball
  ellipse(801, 610, i, i);
}

/*stroke(0);
 for (int i=0;i<=5;i+=1)
 {
 ellipse(801,610,120+i,120+i);
 }*/

fill(0);
ellipse(801, 610, 40, 40);




/*rotate(90);
 for (int i=2;i<=230;i+=1)        //background ellipse
 {
 stroke(190-i, 255-i, 0);
 ellipse(802, 625, 195+i, 387+i);
 }*/
