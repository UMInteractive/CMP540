//Create a function

float a;

void setup(){
  size(500, 500);
  frameRate(12);
  smooth();
  colorMode(HSB, 360, 100, 100);
  a = dist(-50, -50, width + 50, height + 50);
}

void draw(){
  background(50, 100, 80);
  square();
  println(m(10.3));
}

void square(){
  for(int x = 0; x < width; x += 12){
    for(int y = 0; y < height; y += 12){
      float d = dist(mouseX, mouseY, x, y);
      d = d*0.5/a * 230;
      fill(random(360), random(100), random(100), 100);
      stroke(100);
      rect(x, y, d, d); 
    }
  }
}

float m(float num){
  return num = ceil(num);
}


