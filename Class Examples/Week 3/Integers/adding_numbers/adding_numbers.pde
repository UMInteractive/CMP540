int a = 15;
int b = 20;

void setup() {
   //starting with a string implies that we want everything to act as a string
  println("A + B = " + a + b);
  //change the order of operations and we can make it actually add something
  println("A + B = " + (a+b));
}

void draw() {
}

