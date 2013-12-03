//float state1Size = 15;
//float state2Size = 50;

import controlP5.*;

ControlP5 cp5;

int myColor = color(255);

int c1, c2;

float n, n1;


State[] states = new State[3];
float currentStateSize;
int currentState = 0;
boolean growing = false;
boolean shrinking = false;

void setup() {
  size(500, 500);
  noStroke();
  states[0] = new State(40, "California");
  states[1] = new State(70, "Arizona");
  states[2] = new State(20, "New Mexico");
  currentStateSize =  states[currentState].population;
  cp5 = new ControlP5(this);

  // create a new button with name 'buttonA'
  cp5.addButton(states[0].name)
    .setValue(0)
      .setPosition(0, 100)
        .setSize(200, 19)
          ;

  // and add another 2 buttons
  cp5.addButton("Arizona")
    .setValue(1)
      .setPosition(0, 120)
        .setSize(200, 19)
          ;

  cp5.addButton("New Mexico")
    .setPosition(width-100, 140)
      .setSize(100, 19)
        .setValue(2)
          ;
}

void draw() {
  background(0);
  fill(255);
  if (growing) {
    currentStateSize++;
    if (currentStateSize >= states[currentState].population) {
      growing = false;
    }
  }

  if (shrinking) {
    currentStateSize--;
    if (currentStateSize <= states[currentState].population) {
      shrinking = false;
    }
  }
  ellipse(width/2, height/2, currentStateSize, currentStateSize);
}


public void controlEvent(ControlEvent theEvent) {
  currentState = int(theEvent.getController().getValue());
  if (currentStateSize > states[currentState].population) {
    shrinking = true;
    growing = false;
    println("shrinking");
  }
  if (currentStateSize < states[currentState].population) {
    shrinking = false;
    growing = true;
    println("Growing");
  }
}

