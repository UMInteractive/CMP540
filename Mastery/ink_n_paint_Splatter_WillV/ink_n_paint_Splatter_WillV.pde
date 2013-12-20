import processing.serial.*;
Serial arduinoPort;  // Create object from Serial class
//String val;     // Data received from the serial port




float sizInc = 0.42;
float splatSizDec = .4;
float dripSizDec = 0.64;
float splatSlow = 0.135;
float splatGrav = 0.1;
float dripSlow = 0.03;
float minSpeed = 0.5;
float maxOffset = 5;
float maxSiz = 20;
float maxKay = 350;
float maxJay = 350;
float maxVar = 300;
float maxDots = 10;
float mousX = 50;
float prevMousX;
float mousY = 50;
float prevMousY;
float mousVX;
float mousVY;
float time = 0;
ArrayList paintDots;

boolean on = false;

void setup() {

  String val = Serial.list()[0]; 
  arduinoPort = new Serial(this, "/dev/tty.usbmodem1411", 9600); 
  arduinoPort.bufferUntil('\n');

  colorMode(HSB, 360, 100, 100);
  background(0, 0, 99);
  fill(0);
  size(1900, 1000);
  smooth();
  paintDots = new ArrayList();
}

void draw() {
  //  background(255);
  updateAll();

  //  time += 0.01;
  //  mousePressed();
}

void fade() {
  //  if (time > 15) {
  //    fill(0, 0, 99, 15);
  //    rect(0, 0, width, height);
  //    time = 0;
  //  }
  if (mousePressed && (mouseButton == RIGHT)) {
    for (int i = paintDots.size()-1; i >= 0; i--) {  
      paintDots.remove(i);
    }
    fill(0, 0, 99);
    noStroke();
    rect(0, 0, width, height);
  }
}

void updateAll() {
  prevMousX = mousX;
  prevMousY = mousY;
  mousX = random(width);
  mousY = random(height);
  mousVX = mousX - prevMousX;
  mousVY = mousY - prevMousY;
  if (on) {  
    int n = (int)pow(random(0, maxDots), 2);
    float Jay = random(-1*maxJay, maxJay);
    float Kay = random(-1*(maxKay-Jay), maxKay-Jay);
    float Var = random(0, maxVar);
    for (int i = 0; i < n; i++) {
      paintDots.add(new paintDot(mousX, mousY, Jay, Kay, Var));
    }
    splat(mousX, mousY);
    on = false;
  }
  updateDots();
}


void updateDots() {
  print(paintDots.size());
  for (int i = paintDots.size()-1; i >= 0; i--) {
    paintDot drop = (paintDot)paintDots.get(i);
    drop.update();
    drop.display();
    if (drop.finished()) {
      paintDots.remove(i);
    }
  }
}

void splat(float x, float y) {
  noStroke();
  int rad = int(random(3, 30));
  fill(random(360), 100, 100);
  for (float i=3; i<29; i+=.35) {
    float angle = random(0, TWO_PI);
    float splatX = x + cos(angle)*2*i;
    float splatY = y + sin(angle)*3*i;
    ellipse(splatX, splatY, rad-i, rad-i+1.8);
  }
}

void serialEvent(Serial port) {
  on = true;
  port.readBytesUntil('\n');
}

