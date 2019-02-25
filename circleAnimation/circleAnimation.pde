int time = millis();

 
void setup() 
{
  size(400, 400);
  background(0);
  noStroke();
}
 
void draw() {
  background(100);
 
  int passedMillis = millis() - time; // calculates passed milliseconds
  if(passedMillis >= 600){
      time = millis();
      fill(255,0,0);  // if more than 215 milliseconds passed set fill color to red
  }
  
  float stop = TWO_PI / 600.0 * passedMillis;
  
  fill(255); // fill white
  ellipse(width/2,height/2,100,100); // draw second circle
 
  fill(255,0,0);  // fill red
  arc(width/2, height/2, 100, 100, 0, stop ,PIE); // draw red pie over second circle
  textSize(32);
  
  fill(255);
  text("press!", width/2 + 50, height/2); 
  
  if (stop ==0){
    fill(0, 102, 153);
  }
}
