// Variable to hold typed text
String text = "Press ESC key to exit.\nType text here: ";

// Variable to set font
PFont font;
  
void setup() 
{
  size(400, 400);
  
  // Font type
  font = createFont("Helvetica", 18);
}
  
void draw() 
{
  background(0);
  fill(255,255,255);
  textFont(font,18);

  // Blinking cursor, redrawing the String on every frame
  text(text+(frameCount/10 % 2 == 0 ? "_" : ""), 35, 45);
}
  
void keyReleased() 
{
  if (key == CODED) 
  {
    // Special ASCII key
    switch(key) 
    {
      // Catch return key
      case ENTER:
      case RETURN:
      text += "\n";
      break;

      // Ends execution
      case ESC:
      break;
    }
  }
  // Alphabet key
  else 
  {
    // Save pressed key in the String
    text += key;
  }
}
