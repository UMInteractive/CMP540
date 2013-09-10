int theNumber = 5;

void setup() {
  size(200, 200);
}

void draw() {
  if (theNumber > 10) {
      println("The number is greater than 10");
  }
  else if (theNumber <= 5) {
    println("The number is less than or equal to 5");
  }
  
  else {
    println("The number isn't greater than than and it's not less than or equal to 5"); 
  }
}

