float[] purple;
void setup() {
size(500, 500);
background (120,0,120);
purple = new float[width];
for (int i = 0; i <purple.length; i++) {
purple[i] = random( 0, 255);
}
}
void draw() {
  color (#D652FF);
for (int i = 0; i < purple.length; i++) {
stroke(purple[i]);
line(i, 0, i, height);
}
}
