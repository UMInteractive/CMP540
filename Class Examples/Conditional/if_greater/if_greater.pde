int theNumber = 5;

void setup() {
  size(200, 200);
  lying = true;
}

void draw() {
  if (theNumber > 10) {
      println("The number is greater than 10");
  }
  else {
    println("The number is not greater than 10");
  }
}

