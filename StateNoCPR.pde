class StateNoCPR extends State
{
 
  
  public StateNoCPR(){
    
  }
  
  void display(){
    
    background(255, 190, 190);
    fill(0);
    textSize(width/16);
    text("Call 911 immediately and do NOT perform CPR.", width/2, height*2/7);
    
    textSize(12);
    
    drawBackButtons();
  
  }
  
  void mousePressed(){
    super.mousePressed();
  }
  
  
  
}