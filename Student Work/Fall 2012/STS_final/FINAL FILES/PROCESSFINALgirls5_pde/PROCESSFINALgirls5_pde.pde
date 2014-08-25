//The Weight of Education - Indian Girls Project
//S. Turner-Smith, graduate student
//Final first-semester project for Interactive Media Masters program using Processing + Arduino
//December 2013

/*What is an impactful way to visualise just how important it is for gender equality in education 
 to be formalised? This project is based on an impportant statistic presented in Girl Rising: 
 
 "If India enrolled 1% more girls in secondary school, their GDP would rise by $5.5 billion. "(CIA World Factbook) (Global Campaign 
 for Education and RESULTS Education Fund)
 source: http://www.girlrising.com/wp-content/uploads/2011/12/Girl-Rising-stats-sheet_0226131.pdf
 
 Allowing girls not only to enroll but also to complete secondary school benefits not only a girl's 
 life, but also her family, community and even her country. According to research from UNESCO and the World Bank among other sources, 
 these girls not only have healthier and wealthier lives, but they are also 
 - more productive at home
 - better paid in the workplace and able to support their families,
 - likely to marry later and have fewer children
 - able to reduce the chances that her children will die before the age of 5
 - able to participate in community and social decision-making helping change their communities and countries for the better
 
 Education for children is now a fundamental right every Indian boy and girl has under the Indian Constitution. 
 However the main barriers to girls in India in enrolling and staying in secondary school are mainly around
 - financial constraints (and so are married off early, even as children)
 - household labour
 
 Gaining support and appropriate action for this cause to disappear has always been the challenge. 
 This project is an attempt to visualise how the Girl Rising statistic can be used as an increment to GDP in India - and as an economic  
 consideration, perhaps easier to understand for some in terms of impact, urgency and a win-win situation as a different approach than 
 simply the social plight of this issue. This is a message not only for India, but also other countries. It also has a future in correlating 
 quantifiable measurements against other indicators other than GDP. 
 
 Reading the results
 There's 3 physical Indian hand made dolls, two of them represent 1% of girls in India, and one of them is doubled at 2% of girls in India
 There's 3 scales
 - Scale 0 representing household child labour
 - Scale 1 representing education in secondary school
 - Scale 2 representing child marriage
 
 The economic weight of girls going to school
 Each time you place an Indian doll on scale 1 (education), blue ellipses show and the GDP graphic is increased in value with text and a graphic.  
 Scales 0 and 1 don't have a correlation against GDP as there's no accurate formula to quantify the economic value of the girls' child labour in the household or
 becoming child brides. Data however is still read from the scale, and shown as ellipses on the monitor. 
 
 Visual representation of the scale weight data being read into Processing 2.0 and shown as ellipses is based on the Indian flag colours using accurate RGB
 - Orange ellipses = Indian girls in child labour
 - Blue ellipses = Indian girls in secondary school
 - Green ellipses = Indian girls in child marriage
 */
 
 //Load cell and amplifier set up
 //Based on graphics from http://www.ti.com/lit/ds/symlink/ina125.pdf

//The code
import processing.serial.*;

//PGraphics buffer used to allow layers (ellipses representing girls + GDP graphic)
//PGraphics code based on tweaks from different processing forums and sites lilke http://wiki.processing.org/w/Draw_to_off-screen_buffer
PGraphics buffer;
int ii;

//
Serial serial;
int packetCount = 0;
int zero0;
int zero1;
int zero2;

//Scales 1, 2, 3
int scale0 = 0;
int scale1 = 0;
int scale2 = 0;

String GDPval;

void setup() {

  println(Serial.list());

  //The next two serial lines are from http://processing.org/reference/libraries/serial/serialEvent_.html
  serial = new Serial(this, Serial.list()[0], 9600);
  serial.bufferUntil(10);

  //size(870, 600);
  //Increases to full screen size at 1366 x 768 to be seen on monitor)
  size (1366, 700);
  buffer = createGraphics(width, height);
}

void draw() {

  //Establishes ellipses and colour for first scale (scale 0) - orange
  //Random range on the red
  for (int i = 0; i< scale0;i++) {
    fill(int(random(210, 255)), 153, 51);
    // ellipse(int(random(870)), int(random(870)), 20, 20);
    ellipse(int(random(1366)), int(random(1366)), 20, 20);
  }

  //Establishes ellipses and colour for second scale (scale 1) - blue
  //Random range on the blue (GDP scale)
  for (int i = 0; i< scale1;i++) {
    fill(0, 1, int(random(131, 151)));
    //ellipse(int(random(870)),int(random(870)),20,20);
    ellipse(int(random(1366)), int(random(1366)), 20, 20);
  }

  //Establishes ellipses and colour for third scale (scale 2) - green
  //Random range on the green
  for (int i = 0; i< scale2;i++) {
    fill(18, int(random(120, 151)), 7);
    //ellipse(int(random(870)), int(random(870)), 20, 20);
    ellipse(int(random(1366)), int(random(1366)), 20, 20);
  }

  //Allows for the GDP graphic to show and disappear
  //Also allows ellipses representing girls to tone down in colour and disappear after each draw
  fill( 255, 255, 255, 100);
  rect(0, 0, width, height);
  buffer.beginDraw();

  //Code examples like http://www.openprocessing.org/sketch/88420 used to arrive at codes for this piece
  //Makes the background transparent to allow the canvas behind to be seen
  buffer.background(0, 0);
  buffer.fill (#192389);

  buffer.fill( 255, 255, 255, 100);
  buffer.rect(0, 0, width, height);
  buffer.fill(0, 0, 255);  
  buffer.rect(0, height-50, map(scale1, 0, 50, 0, 500), 50);

  //Adds GDP text. 
  //textSize(32);
  textSize(100);
  //fill(0, 6, 152);
  fill(9, 13, 152);

  //Provides GDP text and rounds. Rounding formula was trial and error but mainly manipulated from http://forum.processing.org/one/topic/rounding-to-2dp.html in the next code line
  GDPval = "GDP +" + "$" + (float)round((scale1*.3235)*1000)/1000 + "bn";
  text(GDPval, map(scale1, 0, 50, 0, 500), 500); 

  buffer.endDraw();
  image(buffer.get(), 0, 0);
  ii++;
}

void serialEvent(Serial p) {

  //Reads a whole line from the Serial Port named "p" locally. Uses "try" to catch inconsistencies. 
  //Split is a function separating the three scale readings from the ardiuno data output. Assigns them to an array (incoming values) of strings 
  //Code lines below have been manipulated but based from http://forum.processing.org/one/topic/serial-data-writing-to-a-text-file.html
  try {
    String[] incomingValues = split(p.readString(), ',');

    //Ensures incomingValues aren't empty (traps for noise) 
    if (incomingValues.length > 1) {

      //packetCount allows noise to be eliminated (or skipped).
      //Here counts the number of lines the program is reading and increments by 1
      packetCount++;

      //This code is handled by manual observation 
      //Sets for 0 value and allows some space for noise, different variations tested particularly for scale 1 which is very sensitive

      println("setting zeros");

      //** Adjustment of 0s for each scale: scale 0: 8, scale 1: 23, scale 2: 65 **
      /*All three scales have different starting points, which is highly challenging. 
       For the night of Dec 18 the set below was set at scale 0: 8, scale 1: 23, scale 2: 65, (and have to be reviewed every time scales are moved with map function)*/

      //Code lines below have been manipulated but are based from http://forum.processing.org/one/topic/serial-data-writing-to-a-text-file.html

      //Waits for packets (12) to start reading in order to ignore outlier values when it begins; raised from 6 to 12 night of presentation
      if (packetCount > 12) {
        for (int i = 0; i < incomingValues.length; i++) {
          int newValue = Integer.parseInt(incomingValues[i].trim());

          if (i == 0) {
            println("scale0 raw: " + newValue);
            scale0 = int(map(newValue, 8, 1110, 0, 500));
          }

          if (i==1) {
            println("scale1 raw: " + newValue);
            scale1 = int(map(newValue, 23, 870, 0, 500));
            //scale1 = int(scale1*.187);
          }

          if (i==2) {

            scale2 = int(map(newValue, 65, 870, 0, 500));
            println("scale2 raw: " + newValue);
          }
          //Prints to screen below for easy viewing of values vs checking Arduino for these every time as there is much trial and error
          println("scale0: " + scale0 + ", scale1: " + scale1 + ", scale2: " + scale2 );
          //println(scale1);
          //println(scale2);
        }
      }
    }
  }
  catch (Exception e) {
    println("");
  }
}

