class StateCheckResponsive extends State
{
  public StateCheckResponsive()
  {
  }
  
  void display()
  {
    background(255, 190, 190);
    text("you have arrived to responsiveness", 100,100);
    fill(255);
    
    drawBackButtons();
  }
  
  void mousePressed()
  {
    super.mousePressed();
  }
}
