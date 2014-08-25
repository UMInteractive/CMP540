
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

//The code
//Uses Arduino RunningMedian Library - set up based on links and forums playground.arduino.cc/Main/RunningMedian and forum.arduino.cc/index.php?topic=115891.0

//Keeps track of last 15 values and later used to write median value to serial port
//This gets rid of noise and outliers
#include "RunningMedian.h"
RunningMedian scale0_samples = RunningMedian(15);
RunningMedian scale1_samples = RunningMedian(15);
RunningMedian scale2_samples = RunningMedian(15);


void setup() {
  //Based on arduino.cc/en/Serial/begin
  Serial.begin(9600);
}

void loop() {

  //Reads data from Arduino A0, A1, A2 
  int a0 = analogRead(0);
  int a1 = analogRead(1);
  int a2 = analogRead(2);
  
  //Adding new values to Running Median array
  scale0_samples.add(a0);
  scale1_samples.add(a1);
  scale2_samples.add(a2);
   
  //Calls 'getMedian' from the RunningMedian function to get the 'middle' of the last 15 values read for each scale
  //Prints to serial port as comma separated values 
  String out = "";
  out += (int)scale0_samples.getMedian();
  out += ",";
  out += (int)scale1_samples.getMedian();
  out += ",";
  out += (int)scale2_samples.getMedian();
  
  Serial.println(out);
  

  
  delay(50);
  
}




