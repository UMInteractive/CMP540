boolean lying;

void setup() {
  size(200, 200);
  lying = true;
}

void draw() {
  if (lying) {
    println("I'm lying");
  }
  else {
    println("I'm not lying");
  }
}

