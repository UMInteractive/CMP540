
void setup() {
  int myNumber = 0;
  println ("My number is " + myNumber);
}

void draw() {
  //this won't work because myNumber hasn't been declared in this function and it's not global
  myNumber = myNumber + 1;
  println("My number is " + myNumber);
}

