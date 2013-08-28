void setup() {
  size(700,500);
  background(170,180,255);
  println("canvas created");
}

void draw() {
//  class exercise
//  stroke(255,0,0);
//  fill(0,255,0);
//  ellipse(200,100,50,60);
//  stroke(255,0,255);
//  line(0,0,width,height);
//  rectMode(CENTER);
//  fill(30,40,156);
//  rect(width/2,height/2,40,100);
//  point(50,400);
//  fill(200,0,0,50);
//  noFill();
//  ellipse(width/2,height/2,width,height);

//Rays
noStroke();
fill(250,160,0,50);
triangle(550, 350, -40, 350, -40, 500);
triangle(550, 350, -40, 100, -40, 250);
triangle(550, 350, -20, -10, 220, -10);
triangle(550, 350, 350, -10, 450, -10);
triangle(550, 350, 550, -10, 650, -10);
triangle(550, 350, 750, 20, 750, 150);
triangle(550, 350, 750, 230, 750, 300);
triangle(550, 350, 750, 350, 750, 400);

noFill();

//sky redraw
fill(170,180,255,90);
noStroke();
rect(0,0,width,600);

//ground
fill(10,94,0);
noStroke();
rect(0,400,width,300);

//Cloud 1
fill(255);
noStroke();
ellipse(50,70,60,60);
ellipse(80,50,60,60);
ellipse(90,90,60,60);
ellipse(120,30,60,60);
ellipse(130,80,60,60);
ellipse(160,40,60,60);
ellipse(160,70,60,60);
ellipse(180,50,60,60);

//Cloud curves 1
stroke(205,205,205);
bezier(50+20, 70+10, 60+20, 60+10, 70+20, 60+10, 80+20, 70+10);
bezier(75+20, 65+10, 85+20, 55+10, 95+20, 55+10, 105+20, 65+10);
bezier(90, 45, 100, 35, 110, 35, 120, 45);
bezier(115, 45, 125, 30, 145, 30, 160, 45);
noStroke();

//Cloud 2
ellipse(50+190,70+40,65,65);
ellipse(80+190,50+40,65,65);
ellipse(80+210,50+40,65,65);
ellipse(90+190,90+40,65,65);
ellipse(120+190,30+30,65,65);
ellipse(130+190,80+50,65,65);
ellipse(160+190,40+40,65,65);
ellipse(160+190,70+60,65,65);
ellipse(180+190,50+60,65,65);

//Cloud curves 2
stroke(205,205,205);
bezier(50+250, 70+5, 60+250, 60+5, 70+250, 60+5, 80+250, 70+5);
bezier(75+250, 65+5, 85+250, 55+5, 95+250, 55+5, 105+250, 65+5);
bezier(90+170, 45+75, 100+170, 35+75, 110+170, 35+75, 120+170, 45+75);
bezier(115+170, 45+75, 125+170, 30+75, 145+170, 30+75, 160+170, 45+75);
noStroke();

//Build cloud 3
ellipse(50+400,50+20,75,75);
ellipse(80+380,30+20,75,75);
ellipse(80+390,30+20,75,75);
ellipse(90+400,70+30,75,75);
ellipse(120+370,10+10,75,75);
ellipse(130+380,60+30,75,75);
ellipse(160+380,20+20,75,75);
ellipse(160+370,50+40,75,75);
ellipse(180+390,30+40,75,75);
ellipse(50+500,70+20,60,60);
ellipse(80+500,50+20,60,60);
ellipse(90+500,90+20,60+20,60);
ellipse(120+500,30+20,60,60);
ellipse(130+500,80+20,60,60);
ellipse(160+500,40+20,60,60);
ellipse(160+500,70+20,60,60);
ellipse(180+500,50+20,60,60);

//Cloud curves 3
stroke(205,205,205);
bezier(460, 40, 475, 25, 490, 25, 505, 40);
bezier(500, 35, 510, 25, 520, 25, 530, 35);
bezier(500, 85, 520, 65, 540, 65, 560, 85);
bezier(550, 85, 560, 75, 570, 75, 580, 85);
bezier(575, 80, 595, 65, 615, 65, 635, 80);
bezier(575, 80, 595, 65, 615, 65, 635, 80);
noStroke();

//Sun
fill(250,160,0);
ellipse(550,350,150,150);
noFill();

//Hills
noStroke();
fill(10,94,0);
rotate(radians(5));
ellipse(0,395,800,65); 
rotate(radians(-5));
ellipse(650,405,800,65); 

//River
stroke(0,10,80);
fill(0,10,80);
bezier(255,395,650,420,600,450,550,500);
rect(300,430,250,100);
fill(10,94,0);
bezier(255,395,450,420,400,450,300,500);
noFill();
}
