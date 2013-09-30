//Generatie Art

float a = 5.0;
float b = 3.0;

void setup(){
  size(500, 500);
  smooth();
  frameRate(10);
}

void draw(){
  background(0);
  
  //set the position for each object
  pushMatrix();
  translate(80, 150);
  square();
  popMatrix();
  
  pushMatrix();
  translate(260, 50);
  square();
  popMatrix();
  
  pushMatrix();
  translate(200, 240);
  square();
  popMatrix();
  
  pushMatrix();
  translate(140, 400);
  square();
  popMatrix();
  
  pushMatrix();
  translate(310, 350);
  square();
  popMatrix();
  
  pushMatrix();
  translate(420, 215);
  square();
  popMatrix();  
}

void square(){
  
    //draw rectangles and rotate them
    for(int i = 20; i < 220; i ++){
    fill(random(130), random(60), random(120), 80);
    strokeWeight(random(3));
    stroke(random(125), random(155), random(105));
    rotate(radians(80));
    rect(b*0.5, i/3, i/5-25, i/5-25 );
    }
    b += 0.15;
}
