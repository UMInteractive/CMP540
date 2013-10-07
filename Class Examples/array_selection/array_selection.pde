String names[];
int selectedName = 0;

void setup() {
  names = new String[5];
  names[0] = "Peter";
  names[1] = "Paul";
  names[2] = "Mary";
  names[3] = "Martha";
  names[4] = "Pat";
}

void draw() {
}

void keyPressed() {
  println(names[selectedName]);
  selectedName++;
  if (selectedName >= names.length) {
     selectedName = 0; 
  }
}
