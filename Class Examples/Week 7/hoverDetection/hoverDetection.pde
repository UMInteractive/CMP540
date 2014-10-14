Button myButtons[];

void setup() {
  size(500,500);
  myButtons = new Button[10];
  for (int i = 0; i < myButtons.length; i++) {
    myButtons[i] = new Button(width/2, i*40);  
    
  }

}

void draw() {
  background(0);
  for (int i = 0; i < myButtons.length; i++) {
    myButtons[i].show();
    myButtons[i].checkHover(mouseX, mouseY);
  }
}
