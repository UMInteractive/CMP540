void setup () {
  size(500,500);
}

void draw() {
  //rectangle
  fill(0,255,30);
  rectMode(CENTER);
  stroke(0,255,0);
  rect(width/2, height/2,450,450);
  
  //lines
  stroke(0,0,255);
  line(15,15,480,480);
  line(15,485,485,15); 
  
  //circles
  fill(255,0,0);
  noStroke();
  //top left
  ellipse(20,20,40,40);
  //bottom left
  ellipse(20,480,40,40);
  //top right
  ellipse(480,20,40,40);
  //top left
  ellipse(480,480,40,40);
  

  
}
 
