class StateNoCPR extends State
{
 
  
  public StateNoCPR(){
    
  }
  
  void display(){
    
    background(255, 190, 190);
    fill(0);
    textSize(25);
    text("cpr is not for you, mate!", width/2, height*2/7);
    
    textSize(12);
    
    drawBackButtons();
  
  }
  
  void mousePressed(){
    super.mousePressed();
  }
  
  
  
}