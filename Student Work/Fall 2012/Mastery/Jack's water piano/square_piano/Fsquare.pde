class Fsquare{
  boolean showing = false;
  float start;
  float end;
  float time = 350;
  float big = 300;
  float curve = 10;
  float x;
  float y;
  float randomcolor = random(0,100);
  
  
  Fsquare(float _x,float _y,float delay){
    x = _x;
    y = _y;
    start = millis()+ delay;
    end = start + time;
  }
  void show (){
    if (millis()<= end && millis() >= start){
      stroke(randomcolor,50,99);
      noFill();
      strokeWeight(10);
      rect(x,y,big,big,curve);
      
    }
    
  }
  
  
  
  
  
  
  
}
