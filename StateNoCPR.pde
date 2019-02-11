class StateNoCPR extends State
{
 
  
  public StateNoCPR(){
    
  }
  
  void display(){
    
    background(255, 125, 125);
    fill(255);
    text("cpr is not for you, mate!", 100, 100);
    
    drawBackButtons();
  
  }
  
  void mousePressed(){
    super.mousePressed();
  }
  
  
  
}