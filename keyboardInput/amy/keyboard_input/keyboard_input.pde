// Use the arrow keys to move
// Use "b" "r" "w" and "g" to change color

color green = color(0,255,0);
color white = color(255,255,255);
color black = color(0,0,0);
color red = color(255,0,0);
color blue = color(0,0,255);
int dirX;
int dirY;
int diam = 50;


void setup() {
  size(600,600);
  noStroke();
  smooth();
  fill(255);
  
  dirX = width/2;
  dirY = height/2;
}


void draw() {
  //background(black);

  if (keyPressed) {
    switch(key) {
      case 'g':  
        fill(green);
        break;
      case 'G':
        fill(green);
        break;
      case 'w':
        fill(white);
        break;
      case 'W':
        fill(white);
        break;
      case 'b':
        fill(blue);
        break;
      case 'B':
        fill(blue);
        break;
      case 'r':
        fill(red);
        break;
      case 'R':
        fill(red);
        break;
    }
  }
  ellipse(dirX,dirY,diam,diam);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      dirX-=10;
        if (dirX <= 0) {
            dirX = diam;
        }
    }
    
    if (keyCode == RIGHT) {
      dirX+=10;
        if (dirX >= width) {
            dirX = width-diam;
        }
    }

    if (keyCode == DOWN) {
      dirY+=10;
        if (dirY >= height) {
            dirY = height-diam;
        }
    }
    
    if (keyCode == UP) {
      dirY-=10;
        if (dirY <= 0) {
            dirY = diam;
        }
    }
  }
}
