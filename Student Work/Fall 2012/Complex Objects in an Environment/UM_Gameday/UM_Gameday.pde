/* @pjs preload="Uflag.png, click.jpg, capture.jpg, greenshades.png, cycle.jpg, dot.png, football.png, greenbandaid.png, greenmustache.png, helmet.png, hurricane.png, ibis.png, intro.jpg, logo.png, oldschoolibis.png, one.jpg, orangebandaid.png, orangegreenshades.png, orangemustache.png, palmtree.png, resize.jpg, sun.png, three.jpg, two.jpg"; 
 */

var ctx;
final int cameraWidth = 960;
final int cameraHeight = 640;
PImage capturedPhoto;
boolean usingPhoto = false;
AddOns addons[];
OpenCV opencv;
ArrayList<AddOns> addonsAL;
int currentAddon = 0;
float addon_width;
float addon_height;
float addonScale;
int k;
float x;
float y;
boolean imageDropped;
int w = 1067;
int h = 800;
int threshold = 80;
boolean find=true;
int bg = 1;
int timer = 0;
void setup() { 
  size(cameraWidth, cameraHeight);
   background(bg);
  imageMode(CENTER);
  imageDropped = false;
  ctx = externals.context;
  imageMode(CENTER);
  imageDropped = false;
  capturedPhoto=get(0, 0, cameraWidth, cameraHeight); 
  PImage green = loadImage("greenshades.png");
  PImage palmtree = loadImage("palmtree.png");
  PImage sun = loadImage("sun.png");
  PImage football = loadImage("football.png");
  PImage greenstache = loadImage("greenmustache.png" );
  PImage orangestache = loadImage("orangemustache.png" );
  PImage flag = loadImage("Uflag.png");
  PImage ibis = loadImage("ibis.png");
  PImage osibis = loadImage("oldschoolibis.png");
  PImage helmet = loadImage("helmet.png");
  PImage hurricane = loadImage("hurricane.png");
  PImage logo = loadImage("logo.png");
  PImage gb = loadImage("greenbandaid.png");
  PImage ob = loadImage("orangebandaid.png");
  PImage dot = loadImage("dot.png");
  
  addonScale = .8;
  addons = new AddOns[15];
  addonsAL = new ArrayList<AddOns>();
  
  addons[0] = new AddOns(dot, mouseX, mouseY, .8);
  addons[1] = new AddOns(green, mouseX, mouseY, .8);
  addons[2] = new AddOns(greenstache, mouseX, mouseY, .8);
  addons[3] = new AddOns(orangestache, mouseX, mouseY, .8);
  addons[4] = new AddOns(flag, mouseX, mouseY, .8);
  addons[5] = new AddOns(ibis, mouseX, mouseY, .8);
  addons[6] = new AddOns(osibis, mouseX, mouseY, .8);
  addons[7] = new AddOns(helmet, mouseX, mouseY, .8);
  addons[8] = new AddOns(hurricane, mouseX, mouseY, .8);
  addons[9] = new AddOns(logo, mouseX, mouseY, .8);
  addons[10] = new AddOns(gb, mouseX, mouseY, .8);
  addons[11] = new AddOns(ob, mouseX, mouseY, .8);
  addons[12] = new AddOns(palmtree, mouseX, mouseY, .8);
  addons[13] = new AddOns(sun, mouseX, mouseY, .8);
  addons[14] = new AddOns(football, mouseX, mouseY, .8);
}

void draw() { 
  PImage one = loadImage("one.jpg");
  PImage two = loadImage("two.jpg");
  PImage three = loadImage("three.jpg");
  PImage intro = loadImage("intro.jpg");
  PImage cycle = loadImage("cycle.jpg");
  PImage resize = loadImage("resize.jpg");
  PImage click = loadImage("click.jpg");
   PImage capture = loadImage("capture.jpg");
  timer ++;
  //println(timer);
   
  if (timer == 1) {
    image(intro, 450, 300);
  } 
   
  if (timer == 30) {
    image(cycle, 450, 300);
  } 
   
  if (timer == 60) {
    image(resize, 450, 300);
  } 
   
  if (timer == 90) {
    image(click, 480, 300);
  }
  
    if (timer == 120) {
    image(capture, 480, 300);
  }
       
 if (timer == 150) {
    image(three, 500, 300);
  }
   
  if (timer == 160) {
    image(two, 500, 300);
  }
  if (timer == 170) {
    image(one, 500, 300);
  }
  
  
  
  
  
  
  if (timer == 172 && video.available) {  
    ctx.drawImage(video, 0, 0, cameraWidth, cameraHeight); //video is defined with video.js

    capturedPhoto=get(0, 0, cameraWidth, cameraHeight);
    usingPhoto = true;  
}
  
  if (usingPhoto) {   
       image(capturedPhoto, 480, 320);
//  ctx.drawImage(video, 0, 0, cameraWidth, cameraHeight); //video is defined with video.js
  }
   for (int i = 0; i < addonsAL.size(); i++) {
    AddOns tmpAddon = addonsAL.get(i);
    tmpAddon.display();
  }




  addons[currentAddon].display();
}

void keyPressed() {
 
 if (key == 'd') {
    currentAddon = currentAddon-1;
    if (currentAddon < 0) {
      currentAddon = addons.length-1;
    }
  } 

  if (key == 'a') {
    currentAddon = (currentAddon+1)%addons.length;
  }
  
  if (key == 'w'){
    addons[currentAddon].stacheScale *= 1.2;
    //addons[currentAddon].addon_height *= 1.2;
  }
  
  if (key == 's'){ 
    addons[currentAddon].stacheScale *= addonScale;
    //addons[currentAddon].addon_height *= addonScale;
  }
  
  if (key == 'c'){
    saveFrame("line-####.tif"); 
  }
}


void mouseMoved() {
  addons[currentAddon].xpos = mouseX;
  addons[currentAddon].ypos = mouseY;
}

void mousePressed() {
  //    addons[currentAddon].stamp();
  addonsAL.add(new AddOns(addons[currentAddon].addon_image, addons[currentAddon].xpos, addons[currentAddon].ypos, addons[currentAddon].stacheScale));
  //    addonsAL.add(addons[currentAddon]);
  //new AddOns(stache,  mouseX, mouseY);
  currentAddon = (currentAddon+1)%addons.length;
}


void mouseWheel(MouseEvent event) {
  float e = event.getAmount();
  if (e == -1) {
    addons[currentAddon].stacheScale *= 1.2;
    //addons[currentAddon].addon_height *= 1.2;
  }
  if (e == 1) { 
    addons[currentAddon].stacheScale *= addonScale;
    //addons[currentAddon].addon_height *= addonScale;
  }
}


