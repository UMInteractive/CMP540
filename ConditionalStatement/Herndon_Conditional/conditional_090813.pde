int theNumber = 7;

void setup() {
  size(500, 500);
  background(255,255,255);
}


void draw() {
  if (theNumber > 50) {
    noStroke();
    fill(255,3,7);
    ellipse(width/2,height/2,200,200);
    fill(255,255,255);
    //mouth
    stroke(0,0,0);
    ellipse(width/2,260,50,50);
    //eyes
    ellipse(220,200,20,40);
    ellipse(280,200,20,40);
    
    println("Your number is GREATER than 50!");
 
  }
  else if (theNumber <= 20) {
    noStroke();
    fill(35,203,81);
    ellipse(width/2,height/2,200,200);
    fill(255,255,255);
    //mouth
    stroke(0,0,0);
    ellipse(width/2,260,130,50);
    //eyes
    ellipse(220,200,20,40);
    ellipse(280,200,20,40);
    
    println("Your number is LESS than or EQUAL to 20! ");
  }
  
  else {
    noStroke();
    fill(255,234,0);
    ellipse(width/2,height/2,200,200);
    
    //mouth
    stroke(0,0,0);
    line(210, 240, 290, 240);
    //left eye
    line(200, 200, 220, 220);
    line(220, 200, 200, 220);
    //right eye
    line(280,200,300,220);
    line(280,220,300,200);
   
    
    println("The number is BETWEEN 20 and 50!"); 
  }
  noLoop();
}

