class StateNoCPR extends State
{
 
  
  public StateNoCPR(){
    
  }
  
  void display(){
    
    background(255, 190, 190);
    fill(0);
    textSize(width/16);
    textAlign(CENTER, CENTER);
    text("Call 911 immediately and do NOT perform CPR.", 0, height/4, width, height/2);
    
    textSize(12);
    
    drawBackButtons();
  }
  
  void mousePressed(){
    super.mousePressed();
  }
  
  
  
}
