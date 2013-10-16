void setup() {
  size(800,800);
  println("");
 frameRate(10);
  background(#58d6ff);
 // println(mau5location);
int birthYear = 1989;
int yourAge = calculateAge(birthYear);
println("you are " + yourAge + " years old");

}

void draw(){
  mau5head(random(800),random(800));
 // mau5head(400,100);
 // mau5head(100,500);
}
  void mau5head(float x, float y){
  translate(x, y);  
 // fill(#df0000);
 fill(random(255),random(255),random(255));
  stroke(#010101);
  ellipse(-104,-94,137.5,150);
  ellipse(107,-94,137.5,150);
  ellipse(0,0,150,152);
  fill(255);
  stroke(255);
  ellipse(-34,-31,35,35);
  ellipse(40,-31,35,35);
  arc(0, 7, 125, 125, 0, radians(180));
}



int calculateAge(int a) {
int age = 2013 - a;
return age;
}
