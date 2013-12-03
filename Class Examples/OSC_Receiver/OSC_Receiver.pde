
import oscP5.*;
import netP5.*;

OscP5 oscP5;
//NetAddress myRemoteLocation;
float p1size = 0;
float p2size = 0;
void setup() {
  size(500, 500);
  /* start oscP5, listening for incoming messages at port 12345 */
  oscP5 = new OscP5(this, 12345);
}


void draw() {
  background(0); 
  //the numbers coming in range from 0 to 1, so we multiply by 100 to make it big
  fill(255, 0, 0);
  ellipse(100, height/2, p1size*100, p1size*100);
  fill(0, 255, 0);
  ellipse(width-100, height/2, p2size*100, p2size*100);
}


/* incoming osc message are forwarded to the oscEvent method. */
void oscEvent(OscMessage theOscMessage) {
  /* print the address pattern and the typetag of the received OscMessage */
  print("### received an osc message.");
  //our address ia /player/
  if (theOscMessage.checkAddrPattern("/player")==true) {
    /* check if the typetag is the right one. */
    //the first message we send is an integer (player number)
    //the second message is a float (player power)
    //the type then is if as in "i"nteger "f"loat
    if (theOscMessage.checkTypetag("if")) {
      //we get the arguments and can define the type of value it is
      int player = theOscMessage.get(0).intValue();
      float power = theOscMessage.get(1).floatValue();  
      println("Player " + player + " : " + power);
      //assign the incoming volume power to the player variables
      if (player == 1) {
          p1size = power;
      } 
      if (player == 2) {
         p2size = power; 
      }
    }
  }
}

