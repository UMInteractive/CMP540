//drawing tool
color co1 = color(120, 150, 30);
color co2 = color(255, 255, 0);
color change1 = co1;
color change2 = co2;
int b1 = 80;
int b2 = 45;

void setup(){
  size(500, 500);
  smooth();
  background(0);
  colorMode(RGB);
}

void draw(){
  if(mousePressed){
    circle(change1, change2, b1, b2);
  }
}

void keyPressed(){
  color c1 = color(random(255), random(255), random(255));
  color c2 = color(random(255), random(255), random(255));
  
  if(key == 'a' || key == 'A'){
    change1 = c1;
  }
  if(key == 's' || key == 'S'){
    change2 = c2;
  }
  if(key == ' '){
    background(0);
 }
 if(key == CODED){
   if(keyCode == LEFT){
     b1 += 5;
   }
   if(keyCode == RIGHT){
     b1 -= 5;
   }
   if(keyCode == UP){
     b2 += 5;
   }
   if(keyCode == DOWN){
     b2 -= 5;
   }
 }
}

void circle(color change1, color change2, int b1, int b2){
   noStroke();
     for(int i = 0; i < 360; i += 60){
     float d1 = sin(radians(b1))*15.0;
     float d2 = cos(radians(b2))*15.0;
     float x = cos(radians(i))*d1;
     float y = sin(radians(i))*d1;
     fill(change1);
     ellipse(mouseX + x, mouseY + y, d1, d1);
     fill(change2);
     ellipse(mouseX + 180 + x, mouseY + y, d2, d2);
       }
       fill(random(255), random(255), random(255));
       ellipse(mouseX, mouseY, b1*0.3, b1*0.3);
       ellipse(mouseX + 180, mouseY, b2*0.15, b2 *0.15);
  }
