void setup() {
  size(1700,700);
  println("");
  background(#58d6ff);
  
}

void draw(){
  
  // pyramid
  fill(#f97aec);
  stroke(#f97aec);
  triangle(250, 50 , 150, 200, 350, 200);
  fill(#d065c5);
  stroke(#d065c5);
  triangle(248, 50 , 100, 150, 150, 199);
  
  fill(#f97aec);
  stroke(0);
  ellipse(250, 150, 85, 85);
  ellipse(250, 150, 75, 75);
  ellipse(250, 150, 65, 65);
  ellipse(250, 150, 55, 55);
  ellipse(250, 150, 45, 45);
  ellipse(250, 150, 35, 35);
  ellipse(250, 150, 25, 25);
  ellipse(250, 150, 15, 15);
  ellipse(250, 150, 5, 5);

  
  
  //mau5head
  fill(#df0000);
  stroke(#df0000);
  ellipse(1300,475,300,300);
  ellipse(1105,280,275,300);
  ellipse(1490,280,275,300);
  fill(255);
  ellipse(1240,415,70,70);
  ellipse(1360,415,70,70);
  arc(1300, 482, 250, 250, 0, radians(180));

  
  //flower
  stroke(#04b315);
  strokeWeight(10);
 line(570, 320, 215, 600);
 strokeWeight(1);
  fill(#fffc00);
  stroke(#fffc00);
  ellipse(626,260,170,170);
 // ellipse(800,255,175,50);
  fill(255);
 stroke(255);
  ellipse(626,87,50,175);
  ellipse(639,433,50,175);
 rotate(0.07);
  ellipse(470,225,175,50);
  rotate(radians(20));
  ellipse(672,-190,50,175);
  rotate(radians(21));
  ellipse(622,-433,50,175);
  rotate(radians(22));
  ellipse(477,-649,50,175);
  rotate(radians(23));
  ellipse(250,-800,50,175);
  rotate(radians(24));
  ellipse(-32,-852,50,175);
  rotate(radians(25));
  ellipse(-326,-780,50,175);
  rotate(radians(26));
  ellipse(-570,-583,50,175);
  rotate(radians(40));
  ellipse(-695,-144,50,175);
  rotate(radians(-50));
  ellipse(-466,-329,50,175);
  rotate(radians(-10));
  ellipse(-345,-402,50,175);
  rotate(radians(-15));
  ellipse(-167,-484,50,175);
  rotate(radians(-75));
  ellipse(550,-194,50,175);
  println("");

}
