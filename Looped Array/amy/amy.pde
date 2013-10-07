float[] xs = new float[10];
float[] xsp = new float[10];
float[] ys = new float[10];
float[] ysp = new float[10];
int buffer = 10;
int counter = 0;
int size = 50;
int speed = 3;
float d;
int s = 0;

void setup() {
  background(0);
  size(600,600); 
  smooth();
  stroke(255);
  fill(0);
  // circles show where to put mouse to control size/stroke
  ellipse(width/2,height/2,200,200);
  ellipse(width/2,height/2,100,100);


  for (int i=0; i<10; i++) {
    xs[i] = random(buffer,width-buffer);
    ys[i] = random(buffer,height-buffer);
    ellipse(xs[i],ys[i],size,size); 
    //println(xs[i]);
    //println(ys[i]); 
  }
}


void draw() {

  move();
  stroke(s,s+50,s-50);
  d = abs(dist(mouseX, mouseY, width/2, height/2));
  println(d);
  
  // speed and stroke based on mouse distance from center
  if (d<100) {
    s++;
    speed--;
    size += 2;
      if (s>255) s=0;
      if (speed<3) speed=3;
  }
  
  if (d>=100 && d<200) {
    s += 2;
    speed++;
    size++;
      if (s>255) s=0;
  }
  
  if (d>=200) {
    s += 3;
    speed += 2;
      if (s>255) s=0;
      if (speed>10) speed=10;
  }
  
}

void move() {
  for (int i=0; i<10; i++) {
    // store previous values of x and y
    xsp[i] = xs[i];
    ysp[i] = ys[i];
    
    // find new values for x and y
    xs[i] += random(-speed,speed);
    xs[i] = constrain(xs[i],0,width);
    ys[i] += random(-speed,speed);
    ys[i] = constrain(ys[i],0,height);
      
      // fill color based on last direction of movement
      // size based on last direction of movement
      if (xs[i] > xsp[i] && ys[i] > ysp[i]) {
        fill(255,0,0);  
        counter++;
        size++;
        if (counter == 255) counter = 0;
      }
      if (xs[i] > xsp[i] && ys[i] < ysp[i]) {
        fill(247,0,120); 
        size--;
        if (size < 1) size = 8;
      }
      if (xs[i] < xsp[i] && ys[i] > ysp[i]) {
        fill(205,0,247); 
        size--;
        if (size < 1) size = 8;
      }
      else {
        fill(255-counter);
      }
       
    ellipse(xs[i],ys[i],size,size);  
  }
  
}
