// Adam Edelstein's SamplePad (Drum Version)
 
Pad qPad;
Pad wPad;
Pad ePad;
Pad aPad;
Pad sPad;
Pad dPad;
Pad zPad;
Pad xPad;
Pad cPad;

//Add audio
import ddf.minim.*;
Minim minim;

// Name the Audio Samples
AudioSample BD1;
AudioSample BD2;
AudioSample Snare;
AudioSample Clap;
AudioSample ClosedHat;
AudioSample Crash;
AudioSample HighTom;
AudioSample LowTom;
AudioSample Ride;

// Set the Color for the pads (to be changed when someone hits it)

color padPushed = color(255, 0, 0);
color padStatic = color(0, 0, 17);


// Import the fonts
PFont font1;
PFont font2;
PFont font3;

int x;
int y;

int padWidth = 100;
int padHeight = 100;

void setup() {
  size(800, 600, P2D);
  background(125);

  //load fonts
  font1 =loadFont("ARBONNIE-48.vlw");
  font2 = createFont("Arial", 30);
  font3 = createFont("Times-Roman-20", 20);

  // Add audio
  minim = new Minim(this);

  // Setting variable names for various samples
  BD1 = minim.loadSample("909_BD1.wav");
  BD2 = minim.loadSample("909_BD2.WAV");
  Snare = minim.loadSample("909_Snare.wav");
  Clap = minim.loadSample("909_Clap.wav");
  ClosedHat = minim.loadSample("909_Closed_Hat.wav");
  Crash = minim.loadSample("909_Crash.wav");
  HighTom = minim.loadSample("909_Hi_Tom.WAV");
  LowTom = minim.loadSample("909_Low_Tom.WAV");
  Ride = minim.loadSample("909_Ride.wav");

  // setting variable names for the different pads
  // Row 1
  qPad = new Pad(400, 160);
  wPad = new Pad(540, 160);
  ePad = new Pad(680, 160);
  
  // Row 2
  aPad = new Pad(400, 300);
  sPad = new Pad(540, 300);
  dPad = new Pad(680, 300);
  
  // Row 3
  zPad = new Pad(400, 440);
  xPad = new Pad(540, 440);
  cPad = new Pad(680, 440);
}



void draw() {
  // Display the pads
  // Row 1
  qPad.display();
  wPad.display();
  ePad.display();
  
  // Row 2
  aPad.display();
  sPad.display();
  dPad.display();
  
  // Row 3
  zPad.display();
  xPad.display();
  cPad.display();
  

  // Draw Labels and Fonts
  // Title Label
  textFont(font1);
  textSize(45);
  fill(0);
  text("Adam's SamplePad (Drum Version)", 55, 40); 
  
  line(0, 45, 650, 45);
  line(0, 55, 580, 55);
  line(0, 65, 510, 65);
  

  // Pad Labels
  textFont(font2);
  textSize(35);
  fill(255);

  // Row 1  
  text("Q", 438, 225);    
  text("W", 575, 225);
  text("E", 718, 225);

  // Row 2
  text("A", 438, 365); 
  text("S", 575, 365); 
  text("D", 718, 365);

  // Row 3
  text("Z", 438, 505);
  text("X", 575, 505);
  text("C", 718, 505);
  
    // Sound Labels
    textFont(font1);
    textSize(20);
    fill(200);
    
    //Row 1
    text("BassDrum 1", 419, 153);
    text("BassDrum 2", 556, 153);
    text("Snare", 715, 153);
    
    // Row 2
    text("Clap", 435, 293);
    text("Closed Hat", 560, 293);
    text("Crash", 715, 293);
    
    // Row 3
    text("High Tom", 419, 433);
    text("Low Tom", 560, 433);
    text("Ride", 715, 433);
    
  // use the mix buffer do draw the waveforms.
  // because these are MONO files, we could have used the left or right buffers and got the same data
  stroke(25, 20);
  for (int i = 0; i < BD1.mix.size()-1; i++)
  {
    line(i, 160 - BD1.mix.get(i)*30, i+1, 160 - BD1.mix.get(i+1)*30);
    line(i, 210 - BD2.mix.get(i)*30, i+1, 210 - BD2.mix.get(i+1)*30);
    line(i, 260 - Snare.mix.get(i)*30, i+1, 260 - Snare.mix.get(i+1)*30);
    
    line(i, 300 - Clap.mix.get(i)*30, i+1, 300 - Clap.mix.get(i+1)*30);
    line(i, 350 - ClosedHat.mix.get(i)*30, i+1, 350 - ClosedHat.mix.get(i+1)*30);
    line(i, 400 - Crash.mix.get(i)*30, i+1, 400 - Crash.mix.get(i+1)*30);
    
    line(i, 440 - HighTom.mix.get(i)*30, i+1, 440 - HighTom.mix.get(i+1)*30);
    line(i, 490 - LowTom.mix.get(i)*30, i+1, 490 - LowTom.mix.get(i+1)*30);
    line(i, 540 - Ride.mix.get(i)*30, i+1, 540 - Ride.mix.get(i+1)*30);
  }
  
 
}

void keyPressed() {
  // Turn the pads red when pushed
    // Row 1 
    // Q for BassDrum 1
    if (key == 'q' || key =='Q') {
      BD1.trigger();
     fill(padPushed);
     rect(400, 160, padWidth, padHeight);  
    }
  
    // W for BassDrum 2
    if (key == 'w' || key =='W') {
      BD2.trigger();
      fill(padPushed);
      rect(540, 160, padWidth, padHeight);
    }
    
    // E for Snare
    if (key == 'e' || key =='E') {
      Snare.trigger();
      fill(padPushed);
      rect(680, 160, padWidth, padHeight);
    }

    // Row 2
    // A for Clap
    if (key == 'a' || key =='A') {
      Clap.trigger();
      fill(padPushed);
      rect(400, 300, padWidth, padHeight); 
    }
    
    // S for Closed Hat
    if (key == 's' || key =='S') {
      ClosedHat.trigger();
      fill(padPushed);
      rect(540, 300, padWidth, padHeight);
    }
    
    // D for Crash
    if (key == 'd' || key =='D') {
      Crash.trigger();
      fill(padPushed);
      rect(680, 300, padWidth, padHeight);
    }

    // Row 3
    // Z for High Tom
    if (key == 'z' || key =='Z') {
      HighTom.trigger();
      fill(padPushed);
      rect(400, 440, padWidth, padHeight); 
    }
    
    // X for Low Tom
    if (key == 'x' || key =='X') {
      LowTom.trigger();
      fill(padPushed);
      rect(540, 440, padWidth, padHeight);
    }
    
    // C for Ride
    if (key == 'c' || key =='c') {
      Ride.trigger();
      fill(padPushed);
      rect(680, 440, padWidth, padHeight);
    }
}



