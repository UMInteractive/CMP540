int theNumber = 5;

void setup() {
  size(200, 200);
}

void draw() {
  switch(theNumber) {
  case 0:
    println("the number is 0");
    break;
  case 1:
  case 2:
    println("the number is 1 or 2");
    break;
  case 3:
    println("the number is 3");
  case 4:
    println("the number is 3 or 4");
    break;
  case 5:
    println("the number is 5");
    break;
  default:
    println("not sure what your number is");
  }
}

