void setup(){
  size (900,900);
 print("kricel"); 
 smooth ();
  
}

void draw (){
background (255,204,0);
if (mousePressed){
  fill (0);
} else {
  fill (255);
}
ellipse (mouseX,mouseY, 80,80);
line (0,0,width,height);
stroke (60);
fill (50);
arc (50,50,80,80,0,PI+QUARTER_PI,PIE);
fill (120,50,0);
ellipse (45,50,30,30);
fill (120);
arc(50,50,60,60,0,PI+QUARTER_PI,PIE);
fill(70);
arc (300,300,400,400,0,PI+QUARTER_PI,PIE);
fill (300,50,0);
ellipse ( 300,300,50,50);
fill (250,50,0);
arc (700,700,500,500,0, PI+QUARTER_PI,PIE);
fill (400,120,0);
ellipse (700,700,50,50);
arc (300,300,300,300,0,PI+QUARTER_PI,PIE);
fill(240,130,0);
arc (700,700,400,400,0,PI+QUARTER_PI,PIE);
fill (120,120,0);
arc (800,0,400,400,0,PI+QUARTER_PI,PIE);
ellipse (0,800,400,400);
fill (200,130,0);
rect (700,0,100,100);
fill (300,200,0);
rect (800,0, 100,100);
fill(200,130,0);
rect(0,650,100,100);
fill (300,200,0);
rect (0,750,100,100);



}



