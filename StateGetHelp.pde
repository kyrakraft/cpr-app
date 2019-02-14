class StateGetHelp extends State
{
  public StateGetHelp()
  {
  }
  
  void display()  
  {
    
    background(255, 190, 190);
    fill(255);
    
    
    if (age == Age.ADULT){
      image(yellAdult, 50, 100, 300, 300);
    }
    
    else if (age == Age.CHILD){
      image(yellChild, 50, 200, 300, 300);
    }
        
    drawBackButtons();
    
  }
  
  void mousePressed()
  {
    super.mousePressed();
  }
}
