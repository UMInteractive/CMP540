
float  D;
float  G;
float  B;
float  A;
import ddf.minim.*;
Minim minim;
AudioPlayer playerD;
AudioPlayer playerG;
AudioPlayer playerB;
AudioPlayer playerA;


PFont font;
void setup(){
  size(500,500);
  background(0);
  smooth ();
  minim = new Minim(this);
  playerD= minim.loadFile("117676__kyster__d-open-string.mp3",500);
  playerG= minim.loadFile("117678__kyster__g-open-string.mp3",500);
  playerB= minim.loadFile("117674__kyster__b-open-string.mp3",500);
  playerA= minim.loadFile("117708__kyster__a.mp3",500);
 

 
}

void draw (){
  stroke(255);
  font= loadFont("CenturySchoolbook-Italic-48.vlw");
  textFont(font);
  textSize(50);
  text("Scale:",70,40);
  text(" D  G  B  A ", 200, 40);
  textSize(30);
  text ("d",360,110);
  text("g",380,110);
  text ("b",400,110);
  text("a",425,110);
  
  
  
  
 fill(220,0,220);
  ellipse(200,400,200,200);
  fill (250,250,0);
  ellipse (200,390,120,120);
  
  
 
 
 strokeWeight(1); 
quad (160,470,190,450,260,430,220,500);

stroke(#87D3DB); 
strokeWeight(1); 
 

 //First String (D) 
strokeWeight(2); 
line(175,380,360,110);


//Second String (G) 
 
strokeWeight(2); 
line(188,384,380,110); 


//Third String (B) 
 
strokeWeight(2); 
line(197,403,400,110); 


//Fourth String (A) 

strokeWeight(2); 
line(206,416,425,110); 


  
 
}

void keyPressed(){
  if (key=='d'){
    playerD.play();
    
    }
   if (key=='g'){
     playerG.play();
     
     }
    if (key=='b'){
      playerB.play();
      
      }
     if(key=='a'){
       playerA.play();
       
     }
    
}

void stop(){
  playerD.close();
  playerG.close();
  playerB.close();
  playerA.close();
  minim.stop();
  super.stop();
}

  

