PFont font;
int brushSize = 80;
int time;
color c = color(random(255),random(255), random(255),20);
 
void setup(){
  size(500,500);
  background(0);
  font = loadFont("Futura-Medium-20.vlw");
  textFont (font, 20);
  text("Press space to clear and c to change color.",10,20);
}

void draw(){  
  noStroke();
  changeBrush(brushSize);
  fill(c);
  if (mousePressed == true){
    ellipse(mouseX, mouseY, brushSize, brushSize);
    ellipse(mouseX-(brushSize/10), mouseY-(brushSize/10), brushSize, brushSize);
    ellipse(mouseX+(brushSize/10), mouseY+(brushSize/10), brushSize, brushSize);
  }
}  

void changeBrush(int brushNew){
  brushSize = brushNew; 
}

void keyPressed(){
  if (key == ' '){
    background(0);
  }
  if (key == 'c' || key == 'C'){
  c = color(random(255),random(255), random(255),20);
  }
}

