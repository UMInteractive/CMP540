import ddf.minim.*;

Minim minim;

PianoKey[] noteA = new PianoKey[5];

//AudioSample kick;
//AudioSample snare;

void setup()
{
  size(512, 200, P3D);
  minim = new Minim(this);
  
  for (int i = 0; i < 5; i++) {
     noteA[i] = new PianoKey(i); 
  }
}

void draw()
{
  background(0);
}

void keyPressed() 
{
  if ( key == '1') {
    noteA[0].play();
  }

  if (key == '2') {
    noteA[1].play();
  }
  if ( key == '3') {
    noteA[2].play();
  }

  if (key == '4') {
    noteA[3].play();
  }

  if ( key == '5') {
    noteA[4].play();
  }
}

