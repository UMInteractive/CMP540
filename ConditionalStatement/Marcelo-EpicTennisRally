color ball = #A1FF00;
float xPosition = 30;
float yPosition = 150;
float xDirection = 19;
float yDirection = 1;

void setup() {
  size(800, 600);
  
}

void draw() {
  //millis keeps counting up, so we just hop along for the ride but range between 0 and 255
  fill(0, 170, 0);
  stroke(0, 170, 0);
  rect(0, 0, width, height);
  stroke(255);
  fill(0, 0, 255);
  strokeWeight(3); 
  rect(30, 30, 740, 540);
  line( 200, 300, 600, 300);
  line( 200, 30, 200,570 );
  line( 600, 30, 600,570 );
  
  stroke(0);
  strokeWeight(3);  
 line(400,30, 400, 570); 


  fill(ball); 
  stroke(ball);
  ellipse(xPosition, yPosition, 20, 20);
  xPosition = xPosition + xDirection;
  if (xPosition < 30 || xPosition > 740) {
    xDirection *= -1;
    
    
  }
  yPosition = yPosition + yDirection;
  if (yPosition < 30 || yPosition > 540) {
    yDirection *= -1; //i played around with this number and the x direction number 
                     //but couldnt quite figure out exactly what I was tweaking. I always got random results
                    // Would you be able to tell me what exactly it does?
    
    
  }
}
