//------------------------------//------------------------------//
//              Mastery Assignment: Drawing Tool
//                         Wll Vesely
//------------------------------//------------------------------//


import controlP5.*;
ControlP5 cp5;
Knob myKnobB;

color rgb;

int go;
int brush_size = 50;
int r = 255;
int g = 255;
int b = 255;
int t = 50;

PFont font;


void setup() {
  rgb = color(r, g, b);
  background(50);
  size(1040, 660, OPENGL);
  font        = loadFont("HelveticaNeue-Bold-48.vlw");

  //initializes the sliders, button, and Knob
  cp5 = new ControlP5(this);
  cp5.addSlider("r")
    .setPosition(20, 70)
      .setColorActive(color(#D00018))
        .setColorForeground(color(#AA0014))
          .setColorBackground(color(#440008))
            .setColorValueLabel(color(#80BEB6)) 
              .setColorCaptionLabel(color(#EF543F))

                .setRange(0, 255)
                  .setSize(20, height - 250)
                    ;

  cp5.addSlider("g")
    .setPosition(65, 70)
      .setColorActive(color(#96ED89))
        .setColorForeground(color(0, 160, 100))
          .setColorBackground(color(#044D29))
            .setColorValueLabel(color(#80BEB6)) 
              .setColorCaptionLabel(color(#EF543F))

                .setRange(0, 255)
                  .setSize(20, height - 250)
                    ;

  cp5.addSlider("b")
    .setPosition(110, 70)
      .setColorActive(color(#4A8FE8))
        .setColorForeground(color(#003CAA))
          .setColorBackground(color(#183152))
            .setColorValueLabel(color(#80BEB6)) 
              .setColorCaptionLabel(color(#EF543F))

                .setRange(0, 255)
                  .setSize(20, height - 250)

                    ;

  cp5.addSlider("t")
    .setPosition(20, 10)
      .setColorActive(color(#EF543F))
        .setColorCaptionLabel(color(#EF543F))
          .setColorForeground(color(#80BEB6))
            .setColorBackground(color(#313541))
              .setColorValueLabel(color(#313541)) 
                .setRange(0, 100)
                  .setSize(110, 20)

                    ;

  cp5.addButton("clearScreen")
    .setPosition(20, height - 35)
      .setCaptionLabel("       clear the screen")
        .setColorCaptionLabel(color(#000000))
          .setColorActive(color(#EF543F))
            .setColorCaptionLabel(color(#EF543F))
              .setColorForeground(color(#F2D570))
                .setColorBackground(color(#313541))
                  .setSize(108, 20)
                    .setValue(0)
                      ;

  myKnobB = cp5.addKnob("brush_size")
    .setCaptionLabel("Brush Size") 
      .setRange(0, 100)
        .setValue(50)
          .setPosition(23, height - 155)
            .setRadius(50)
              .setNumberOfTickMarks(10)
                .setTickMarkLength(4)
                  .snapToTickMarks(true)
                    .setColorForeground(color(#80BEB6))
                      .setColorBackground(color(#313541))
                        .setColorCaptionLabel(color(#EF543F))
                          .setColorActive(color(#F2D570))
                            .setColorValueLabel(color(#80BEB6)) 
                              .setDragDirection(Knob.HORIZONTAL)
                                ;
}

void draw() {
  mouseReleased();
  mousePressed();
  stroke(r, g, b);
  strokeWeight(1);
  fill(0);
  rect(0, 0, 155, height);
  writing();
}

//draws
void mousePressed() {
  if (mousePressed) {
    cursor(CROSS);
    brushTip();
  }
}

//seems easier to see cursor-position over the controls with a "hand"
void mouseReleased() {
  cursor(HAND);
}

//the "brush"
void brushTip() {
  for (float x = brush_size; x > 5; x -= 5) {
    fill(r, g, b, t);
    noStroke();
    ellipse(mouseX, mouseY, x, x);
  }
}

// the word "color"
void writing() {
  fill(r, g, b);
  textFont(font, 30);
  text("COLOR", 22, 60);
}

//button command
public void clearScreen(int theValue) {
  background(50);
}

