class StateNoCPR extends State
{
 
  
  public StateNoCPR(){
    
  }
  
  void display(){
    
    background(255, 190, 190);
    fill(255);
    text("cpr is not for you, mate!", 100, 100);
    
    drawBackButtons();
  
  }
  
  void mousePressed(){
    super.mousePressed();
  }
  
  
  
}
