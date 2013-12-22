class State {
  float landMass;
  float population;
  int x;
  int y;  
  String name;
  
  State(float l, float p, String _n) {
    landMass = l;
    population = p;
    name = _n;
    x = width/2;
    y = height/2;
  } 

import controlP5.*;

ControlP5 cp5;

int myColor = color(255);
int c1, c2;
float n, n1;
PFont title;
PFont subtitle;


State[] states = new State[52];
float currentStateSize;
float currentStatePopulation;
int currentState = 0;
boolean l_growing = false;
boolean l_shrinking = false;
boolean p_growing = false;
boolean p_shrinking = false;

void setup() {
  size(900, 750);
  frameRate(120);
  noStroke();
  states[0] = new State(214.705, 34.632, "Alabama");
  states[1] = new State(1000, 5.253, "Alaska");
  states[2] = new State(480.807, 47.066, "Arizona");
  states[3] = new State(220.308, 21.181, "Arkansas");
  states[4] = new State(659.886, 273.215, "California");
  states[5] = new State(438.846, 37.258, "Colorado");
  states[6] = new State(44, 34.73, "Connecticut");
  states[7] = new State(38, 13, "Delaware");
  states[8] = new State(20, 20, "District of Colmbia");
  states[9] = new State(228.320, 138.739, "Florida");
  states[10] = new State(245.009, 71.245, "Georgia");
  states[11] = new State(58, 15, "Hawaii");
  states[12] = new State(350.115, 11.495, "Idaho");
  states[13] = new State(235.184, 92.471, "Illinois");
  states[14] = new State(151.759, 46.951, "Indiana");
  states[15] = new State(236.390, 22.079, "Iowa");
  states[16] = new State(346.171, 20.727, "Kansas");
  states[17] = new State(168.095, 31.460, "Kentucky");
  states[18] = new State(184.317, 33.051, "Louisiana");
  states[19] = new State(130.581, 9.546, "Maine");
  states[20] = new State(87, 78, "Maryland");
  states[21] = new State(71, 61.2, "Massachusetts");
  states[22] = new State(240.346, 70.983, "Michigan");
  states[23] = new State(336.842, 38.633, "Minnesota");
  states[24] = new State(198.470, 21.478, "Mississippi");
  states[25] = new State(291.467, 43.250, "Missouri");
  states[26] = new State(615.852, 7.219, "Montana");
  states[27] = new State(325.2569, 13.326, "Nebraska");
  states[28] = new State(464.690, 19.815, "Nevada");
  states[29] = new State(81, 18, "New Hampshire");
  states[30] = new State(70, 65, "New Jersey");
  states[31] = new State(513.47, 14.978, "New Mexico");
  states[32] = new State(199.770, 140.554, "New York");
  states[33] = new State(206.104, 70.040, "North Carolina");
  states[34] = new State(291.848, 5.025, "North Dakota");
  states[35] = new State(173.257, 82.911, "Ohio");
  states[36] = new State(290.540, 27.399, "Oklahoma");
  states[37] = new State(438.850, 28.005, "Oregon");
  states[38] = new State(189.627, 91.669, "Pennsylvania");
  states[39] = new State(35, 24.6, "Rhode Island");
  states[40] = new State(127.395, 33.926, "South Carolina");
  states[41] = new State(321.081, 5.985, "South Dakota");
  states[42] = new State(174.396, 46.369, "Tennessee");
  states[43] = new State(800, 187.158, "Texas");
  states[44] = new State(347.564, 20.507, "Utah");
  states[45] = new State(84, 8, "Vermont");
  states[46] = new State(167.528, 58.791, "Virginia");
  states[47] = new State(281.558, 49.535, "Washington");
  states[48] = new State(101.878, 13.326, "West Virginia");
  states[49] = new State(229.793, 41.127, "Wisconsin");
  states[50] = new State(410.845, 4.140, "Wyoming");
  states[51] = new State(.0002, .0002, "Reset");
   
  currentStateSize =  states[currentState].landMass;
  cp5 = new ControlP5(this);

cp5.addButton("Reset")
.setValue(51)
.setPosition(width-100,600)
.setSize(100, 19)
    ;

  // create a new button with name 'buttonA'
  cp5.addButton("Alabama")
    .setValue(0)
      .setPosition(0, 100)
        .setSize(100, 19)
          ;

  // and add another 2 buttons
  cp5.addButton("Alaska")
    .setValue(1)
      .setPosition(0, 120)
        .setSize(100, 19)
          ;

  cp5.addButton("Arizona")
    .setValue(2)
      .setPosition(0, 140)
        .setSize(100, 19)
          ;

  cp5.addButton("Arkansas")
    .setValue(3)
      .setPosition(0, 160)
        .setSize(100, 19)
          ;

  cp5.addButton("California")
    .setValue(4)
      .setPosition(0, 180)
        .setSize(100, 19)
          ;

  cp5.addButton("Colorado")
    .setValue(5)
      .setPosition(0, 200)
        .setSize(100, 19)
          ;

  cp5.addButton("Connecticut")
    .setValue(6)
      .setPosition(0, 220)
        .setSize(100, 19)
          ;

  cp5.addButton("Delaware")
    .setValue(7)
      .setPosition(0, 240)
        .setSize(100, 19)
          ;

  cp5.addButton("Florida")
    .setValue(9)
      .setPosition(0, 260)
        .setSize(100, 19)
          ;

  cp5.addButton("Georgia")
    .setValue(10)
      .setPosition(0, 280)
        .setSize(100, 19)
          ;

  cp5.addButton("Hawaii")
    .setValue(11)
      .setPosition(0, 300)
        .setSize(100, 19)
          ;

  cp5.addButton("Idaho")
    .setValue(12)
      .setPosition(0, 320)
        .setSize(100, 19)
          ;

  cp5.addButton("Illinois")
    .setValue(13)
      .setPosition(0, 340)
        .setSize(100, 19)
          ;

  cp5.addButton("Indiana")
    .setValue(14)
      .setPosition(0, 360)
        .setSize(100, 19)
          ;

  cp5.addButton("Iowa")
    .setValue(15)
      .setPosition(0, 380)
        .setSize(100, 19)
          ;

  cp5.addButton("Kansas")
    .setValue(16)
      .setPosition(0, 400)
        .setSize(100, 19)
          ;

  cp5.addButton("Kentucky")
    .setValue(17)
      .setPosition(0, 420)
        .setSize(100, 19)
          ;

  cp5.addButton("Louisiana")
    .setValue(18)
      .setPosition(0, 440)
        .setSize(100, 19)
          ;

  cp5.addButton("Maine")
    .setValue(19)
      .setPosition(0, 460)
        .setSize(100, 19)
          ;

  cp5.addButton("Maryland")
    .setValue(20)
      .setPosition(0, 480)
        .setSize(100, 19)
          ;

  cp5.addButton("Massachusetts")
    .setValue(21)
      .setPosition(0, 500)
        .setSize(100, 19)
          ;

  cp5.addButton("Michigan")
    .setValue(22)
      .setPosition(0, 520)
        .setSize(100, 19)
          ;

  cp5.addButton("Minnesota")
    .setValue(23)
      .setPosition(0, 540)
        .setSize(100, 19)
          ;      

  cp5.addButton("Mississippi")
    .setValue(24)
      .setPosition(0, 560)
        .setSize(100, 19)
          ;

  cp5.addButton("Missouri")
    .setValue(25)
      .setPosition(0, 580)
        .setSize(100, 19)
          ;

  cp5.addButton("Montana")
    .setPosition(width-100, 100)
      .setSize(100, 19)
        .setValue(26)
          ;

  cp5.addButton("Nebraska")
    .setPosition(width-100, 120)
      .setSize(100, 19)
        .setValue(27)
          ;

  cp5.addButton("Nevada")
    .setPosition(width-100, 140)
      .setSize(100, 19)
        .setValue(28)
          ;

  cp5.addButton("New Hampshire")
    .setPosition(width-100, 160)
      .setSize(100, 19)
        .setValue(29)
          ;

  cp5.addButton("New Jersey")
    .setPosition(width-100, 180)
      .setSize(100, 19)
        .setValue(30)
          ;

  cp5.addButton("New Mexico")
    .setPosition(width-100, 200)
      .setSize(100, 19)
        .setValue(31)
          ;

  cp5.addButton("New York")
    .setPosition(width-100, 220)
      .setSize(100, 19)
        .setValue(32)
          ;

  cp5.addButton("North Carolina")
    .setPosition(width-100, 240)
      .setSize(100, 19)
        .setValue(33)
          ;

  cp5.addButton("North Dakota")
    .setPosition(width-100, 260)
      .setSize(100, 19)
        .setValue(34)
          ;

  cp5.addButton("Ohio")
    .setPosition(width-100, 280)
      .setSize(100, 19)
        .setValue(35)
          ;

  cp5.addButton("Oklahoma")
    .setPosition(width-100, 300)
      .setSize(100, 19)
        .setValue(36)
          ;

  cp5.addButton("Oregon")
    .setPosition(width-100, 320)
      .setSize(100, 19)
        .setValue(37)
          ;

  cp5.addButton("Pennsylvania")
    .setPosition(width-100, 340)
      .setSize(100, 19)
        .setValue(38)
          ;

  cp5.addButton("Rhode Island")
    .setPosition(width-100, 360)
      .setSize(100, 19)
        .setValue(39)
          ;

  cp5.addButton("South Carolina")
    .setPosition(width-100, 380)
      .setSize(100, 19)
        .setValue(40)
          ;

  cp5.addButton("South Dakota")
    .setPosition(width-100, 400)
      .setSize(100, 19)
        .setValue(41)
          ;

  cp5.addButton("Tennessee")
    .setPosition(width-100, 420)
      .setSize(100, 19)
        .setValue(42)
          ;

  cp5.addButton("Texas")
    .setPosition(width-100, 440)
      .setSize(100, 19)
        .setValue(43)
          ;

  cp5.addButton("Utah")
    .setPosition(width-100, 460)
      .setSize(100, 19)
        .setValue(44)
          ;

  cp5.addButton("Vermont")
    .setPosition(width-100, 480)
      .setSize(100, 19)
        .setValue(45)
          ;

  cp5.addButton("Virginia")
    .setPosition(width-100, 500)
      .setSize(100, 19)
        .setValue(47)
          ;

  cp5.addButton("Washington")
    .setPosition(width-100, 520)
      .setSize(100, 19)
        .setValue(48)
          ;          


  cp5.addButton("West Virginia")
    .setPosition(width-100, 540)
      .setSize(100, 19)
        .setValue(48)
          ;

  cp5.addButton("Wisconsin")
    .setPosition(width-100, 560)
      .setSize(100, 19)
        .setValue(49)
          ;

  cp5.addButton("Wyoming")
    .setPosition(width-100, 560)
      .setSize(100, 19)
        .setValue(50)
          ;
}



void draw() {
  
background(#016C9E);
title = loadFont("Baskerville-48.vlw");
subtitle = loadFont("MyriadPro-Regular-15.vlw");
  
  if (l_growing) {
    currentStateSize+=7;
    if (currentStateSize >= states[currentState].landMass) {
      l_growing = false;
    }
  }

  if (l_shrinking) {
    currentStateSize-=7;
    if (currentStateSize <= states[currentState].landMass) {
      l_shrinking = false;
    }
  }
  if (p_growing) {
    currentStatePopulation+=3;
    if (currentStatePopulation >= states[currentState].population) {
      p_growing = false;
    }
  }

  if (p_shrinking) {
    currentStatePopulation-=3;
    if (currentStatePopulation<= states[currentState].population) {
      p_shrinking = false;
    }
  }
  fill(255);
  ellipse(width/2, height/2, currentStateSize, currentStateSize);
  fill(#FF9900);
  ellipse(width/2, height/2, currentStatePopulation, currentStatePopulation);
  fill(255);

noStroke();
fill(#000000);  
textFont(title);
textSize(47);
text("L A N D  M A S S", width/2, 50);


textFont(subtitle);
textSize(15);
textAlign(CENTER);
fill(#FF9900);
text("BY: @RobbyTassy", width-200, 50);
fill(#000000);
text("An interactive list of the U.S. and their respective land masses as well as population, which compares state densities.", width/2, 70);
fill(#000000);
text("Click on a state to view its size (sq. km.) in white and population in orange, represented by a simple circle.", width/2, 85);

fill(#000000);
text("SOURCE: www.worldatlas.com/aatlas/populations/usapoptable.htm", width-250, 700);
        
  }

 
public void controlEvent(ControlEvent theEvent) {
  currentState = int(theEvent.getController().getValue());
  if (currentStateSize > states[currentState].landMass) {
    l_shrinking = true;
    l_growing = false;
    println("shrinking");
  }
  if (currentStateSize < states[currentState].landMass) {
    l_shrinking = false;
    l_growing = true;
    println("Growing");
  }  
  if (currentStatePopulation > states[currentState].population) {
    p_shrinking = true;
    p_growing = false;
    println("shrinking");
  }
  if (currentStatePopulation < states[currentState].population) {
    p_shrinking = false;
    p_growing = true;
    println("Growing");
  }
}



void changeCurrentState (int selectedState) {
  currentState = (selectedState);
  if (currentStateSize > states[currentState].landMass) {
    l_shrinking = true;
    l_growing = false;
    println("shrinking");
  }
    if (currentStateSize < states[currentState].landMass) {
    l_shrinking = false;
    l_growing = true;
    println("Growing");
  }  
  if (currentStatePopulation > states[currentState].population) {
    p_shrinking = true;
    p_growing = false;
    println("shrinking");
  }
  if (currentStatePopulation < states[currentState].population) {
    p_shrinking = false;
    p_growing = true;
    println("Growing");
  }
}
