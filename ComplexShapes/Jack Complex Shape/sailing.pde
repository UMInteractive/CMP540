void setup() {
  smooth();
  size(1024, 700);
  background(214, 233, 255);
}
void draw() {
  //Sun
  strokeWeight(5);
  fill(245, 146, 5);
  strokeWeight(4);
  ellipse(130, 140, 100, 100);
  arc(110, 140, 50, 40, radians(240), radians(300));
  arc(150, 140, 50, 40, radians(240), radians(300));
  arc(130, 140, 80, 50, radians(90-55), radians(90+55));
//back waves 
strokeWeight(1);
  for (int d=350; d<=600-65; d+=65) {
    for (int i=0; i<=1154; i+=200) {
      fill(68, 131, 216, 200);//back wave for each line
      ellipse(i, d, 130, 130);
      fill(186, 202, 224);
      ellipse(i, d, 70, 70);
      fill(155, 188, 216);
      ellipse(i, d, 40, 40);
    }
    for (int i=0; i<=1154; i+=200) {
      fill(68, 131, 216, 200);//fore wave for each line
      ellipse(i+100, d, 130, 130);
      fill(186, 202, 224);
      ellipse(i+100, d, 70, 70);
      fill(155, 188, 216);
      ellipse(i+100, d, 40, 40);
    }
  }


  //boat
  //arc(660,405,345,300,radians(-2),radians(80));
  strokeWeight(5);
  fill(255, 255, 255);//white
  arc(420, 390, 440, 710, radians(-94), radians(2));
  arc(635, 490, 550, 1800, radians(185), radians(210));
  arc(390, 390, 182, 710, radians(-85), radians(3));
  fill(137, 90, 52);//Brown
  quad(130, 420, 215, 550, 692, 551, 830, 400);
  ellipse(770, 420, 15, 15);
  //front waves
  strokeWeight(1);
  for (int d=600-65; d<=800; d+=65) {
    for (int i=0; i<=1154; i+=200) {
      fill(68, 131, 216, 200);//back wave for each line
      ellipse(i, d, 130, 130);
      fill(186, 202, 224);
      ellipse(i, d, 70, 70);
      fill(155, 188, 216);
      ellipse(i, d, 40, 40);
    }
    for (int i=0; i<=1154; i+=200) {
      fill(68, 131, 216, 200);//fore wave for each line
      ellipse(i+100, d, 130, 130);
      fill(186, 202, 224);
      ellipse(i+100, d, 70, 70);
      fill(155, 188, 216);
      ellipse(i+100, d, 40, 40);
    }
  }
  //cover
  fill(214, 233, 255);
  strokeWeight(0);
  //rect(-1, 553, 1024, 500);
}

