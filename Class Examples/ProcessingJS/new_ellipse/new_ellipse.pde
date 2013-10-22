int x = 0;
int grayness = 255;

void setup() {
  
}

void draw() {
  fill(grayness);
  ellipse(x,50,50,50); 
 x++;
 if (x > 100) {
    x = 0; 
 }
}

void change_color(int g) {
   grayness = g; 
}



