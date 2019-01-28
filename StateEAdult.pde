class StateEAdult extends State
{
 
  
  public StateEAdult(){
    
  }
  
  void display(){
    
    background(100);
    fill(255);
    ellipse(30, 30, 30, 30);
    text("emergency - adult", 100, 100);
    
    drawBackButtons();
  
  }
  
  void mousePressed(){
    super.mousePressed();
  }
  
  
  
}
