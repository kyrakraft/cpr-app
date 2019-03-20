class StateNoCPR extends State
{
 
  
  public StateNoCPR(){
    
  }
  
  void display(){
    
    background(255, 190, 190);
    fill(0);
    textSize(width/16);
    text("cpr is not for you, mate!", width/2, height*2/7);
    
    textSize(width/33.3);
    
    drawBackButtons();
  
  }
  
  void mousePressed(){
    super.mousePressed();
  }
  
  
  
}