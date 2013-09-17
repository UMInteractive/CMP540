
void setup () {

  size (500, 500);
  background(#080707);
}
//main frame
void draw () {
  fill (#C630C6);

  //squared square violet 1
  beginShape(TRIANGLE_FAN);
  vertex(57.5, 50);
  vertex(57.5, 15); 
  vertex(92, 50); 
  vertex(57.5, 85); 
  vertex(22, 50); 
  vertex(57.5, 15); 
  endShape();

  //ellipse violet small 1
  ellipse(79, 79, 20, 20);

  //ellipses med red 2, 3, 4
  fill (#F05233);
  ellipse(105, 105, 50, 50);
  ellipse(200, 200, 50, 50);
  ellipse(400, 400, 50, 50);

  //line right
  line(128, 100, 174, 210);
  stroke (#FFFCFC);

  //line LEFT
  line(85, 120, 219, 180);
  stroke (#FFFCFC);

  //diamonds 1, 2
  fill (#49D662);
  rect(300, 300, 55, 55);
  rect(245, 245, 55, 55);

  //ellipses green small 5, 6
  fill (#15521F);
  ellipse(225, 225, 20, 20);
  ellipse(240, 240, 20, 20);

  //top diamond 3
  rect(260, 260, 63, 63);

  //ellipses green small 7, 8
  fill (#15521F);
  ellipse(361, 361, 20, 20);
  ellipse(375, 375, 20, 20);
}







