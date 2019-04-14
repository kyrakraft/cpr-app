int time = millis();
int r = 100;
 
 
void drawCircle() {
  noStroke();
 
  int passedMillis = millis() - time; // calculates passed milliseconds
   
  if(passedMillis >= 600){
      time = millis();
      fill(255,0,0);  // if more than 215 milliseconds passed set fill color to red
      
  }
  
  final float bpm = 100.0;
  final float bpmillis = (60.0/ bpm) * 1000;
  
  float stop = TWO_PI / bpmillis * passedMillis;
  
  fill(125, 107, 155); // fill white
  ellipse(width/2,height/2,r,r); // draw second circle
  
 
  fill(255,0,0);  // fill red
  
  if (stop >3*PI/2 && stop < 2*PI){
    fill(255, 210, 0);
    ellipse(width/2, height/2, r, r);
  }
  
  //arc(width/2, height/2, 100, 100, 0, stop ,PIE); // draw red pie over second circle

  if (0 < passedMillis && passedMillis < 20) {
    playSound();
  }
  
  else {
    fill (255);
  }
  
  fill(0);
  text("Perform compressions!", width/2, height/2 + height/8); 
  
 // if (stop ==0){
   // fill(0, 102, 153);
  //}
}
